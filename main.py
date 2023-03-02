import cv2
from gaze_tracking import GazeTracking
import matplotlib.pyplot as plt


list_x = []
list_y = []
plot_output1 = []
plot_output2 = []
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

    # cv2.putText(frame, text, (90, 60), cv2.FONT_HERSHEY_DUPLEX, 1.6, (147, 58, 31), 2)

    left_pupil_x = gaze.pupil_left_coords_x()
    right_pupil_x = gaze.pupil_right_coords_x()

    left_pupil_y = gaze.pupil_left_coords_y()
    right_pupil_y = gaze.pupil_right_coords_y()


    cv2.putText(frame, "Left pupil:  " + str(left_pupil_x), (90, 130), cv2.FONT_HERSHEY_DUPLEX, 0.9, (147, 58, 31), 1)
    # cv2.putText(frame, "Right pupil: " + str(right_pupil_x), (90, 165), cv2.FONT_HERSHEY_DUPLEX, 0.9, (147, 58, 31), 1)

    if (left_pupil_x is None) or (right_pupil_x is None) or (left_pupil_y is None) or (right_pupil_y is None):
        continue
    list_x.append(left_pupil_x)
    list_y.append(left_pupil_y)
    a = list_x[0]

    print(list_x)
    # for l in list: #i를 지정해서 listi로 ? list 새로지정을 어떻게 하지.

    if (left_pupil_x > a+100) or (left_pupil_x < a-100):
        break

    cv2.imshow("Demo", frame)

    if cv2.waitKey(1) == 27:
        break


# webcam = gr.inputs.Image(shape=(640,480), source="webcam")
# webapp = gr.interface.Interface(inputs=webcam, outputs="images")
# webapp.launch()
plt.plot(list_x, list_y)
plt.show()
webcam.release()
cv2.destroyAllWindows()