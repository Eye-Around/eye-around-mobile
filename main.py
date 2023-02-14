import cv2
import gradio as gr
from gaze_tracking import GazeTracking

list=[]
gaze = GazeTracking()
webcam = cv2.VideoCapture(0)

while True:
    # We get a new frame from the webcam
    _, frame = webcam.read()

    # We send this frame to GazeTracking to analyze it
    gaze.refresh(frame)

    frame = gaze.annotated_frame()
    text = ""

    if gaze.is_blinking():
        text = "Blinking"
    elif gaze.is_right():
        text = "Looking right"
    elif gaze.is_left():
        text = "Looking left"
    elif gaze.is_center():
        text = "Looking center"

    #cv2.putText(frame, text, (90, 60), cv2.FONT_HERSHEY_DUPLEX, 1.6, (147, 58, 31), 2)

    left_pupil = gaze.pupil_left_coords_x()
    right_pupil = gaze.pupil_right_coords_x()
    cv2.putText(frame, "Left pupil:  " + str(left_pupil), (90, 130), cv2.FONT_HERSHEY_DUPLEX, 0.9, (147, 58, 31), 1)
    #cv2.putText(frame, "Right pupil: " + str(right_pupil), (90, 165), cv2.FONT_HERSHEY_DUPLEX, 0.9, (147, 58, 31), 1)

    list.append(left_pupil)
    #a=list[0] 다른 함수가 맞물려있으니까 (x,y)이 부분 따로 자그맣게 짜면되겠다. #화면상에 숫자가 0부터 1000까지? 어떻게 나타나지는지 부터 코드를 보아야 할 것
    print(list)
    #for l in list: #i를 지정해서 listi로 ? list 새로지정을 어떻게 하지.
    #    if list>a+100 or list<a-100:

    cv2.imshow("Demo", frame)

    if cv2.waitKey(1) == 27:
        break


webcam = gr.inputs.Image(shape=(640,480), source="webcam")
webapp = gr.interface.Interface(inputs=webcam, outputs="images")
webapp.launch()
webcam.release()
cv2.destroyAllWindows()