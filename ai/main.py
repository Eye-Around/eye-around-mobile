import cv2
from gaze_tracking import GazeTracking
import matplotlib.pyplot as plt

gaze = GazeTracking()
webcam = cv2.VideoCapture(0)

while True:
    # We get a new frame from the webcam
    _, frame = webcam.read()

    # We send this frame to GazeTracking to analyze it
    gaze.refresh(frame)

    frame = gaze.annotated_frame()
    text = ""

    # TODO: enum 타입으로 반환하도록 수정
    if gaze.is_blinking():
        text = "Blinking"
    elif gaze.is_right():
        text = "right"
    elif gaze.is_left():
        text = "left"
    elif gaze.is_up():
        text = "up"
    elif gaze.is_down():
        text = "down"
    elif gaze.is_center():
        text = "center"

    left_pupil = gaze.pupil_left_coords()
    right_pupil = gaze.pupil_right_coords()

    # cv2.putText(frame, "Left pupil:  " + str(left_pupil_x), (90, 130), cv2.FONT_HERSHEY_DUPLEX, 0.9, (147, 58, 31), 1)
    # cv2.putText(frame, "Right pupil: " + str(right_pupil_x), (90, 165), cv2.FONT_HERSHEY_DUPLEX, 0.9, (147, 58, 31), 1)

    # TODO: break 조건 추가 (언제 멈출지)
    if left_pupil[0] is None and left_pupil[1] is None and right_pupil[0] is None and right_pupil[1] is None:
        break

    cv2.imshow("Demo", frame)

    if cv2.waitKey(1) == 27:
        break

webcam.release()
cv2.destroyAllWindows()
