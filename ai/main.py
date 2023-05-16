from math import sqrt

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
    #elif gaze.is_right_up():
    #    text = "right-up"
    #elif gaze.is_right_down():
    #    text = "right-down"
    #elif gaze.is_left_up():
    #    text = "left-up"
    #elif gaze.is_left_down():
    #    text = "left-down"

    left_pupil = gaze.pupil_left_coords()
    right_pupil = gaze.pupil_right_coords()
    left_pupil_x = gaze.pupil_left_coords_x()
    right_pupil_x = gaze.pupil_right_coords_x()
    left_pupil_y = gaze.pupil_left_coords_y()
    right_pupil_y = gaze.pupil_right_coords_y()

    if (right_pupil_x is None) or (left_pupil_x is None) or (right_pupil_y is None) or (left_pupil_y is None):
        continue
    between = sqrt(pow((right_pupil_x-left_pupil_x) ** 2+(left_pupil_y-right_pupil_y) ** 2, 2))

    cv2.putText(frame, text, (70, 50), cv2.FONT_HERSHEY_DUPLEX, 1.6, (147, 58, 31), 2)

    cv2.putText(frame, "Left Pupil:  " + str(left_pupil), (90, 130), cv2.FONT_HERSHEY_DUPLEX, 0.9, (147, 58, 31), 1)
    # cv2.putText(frame, "Right Pupil: " + str(right_pupil_x), (90, 165), cv2.FONT_HERSHEY_DUPLEX, 0.9, (147, 58, 31), 1)
    print(between)


    cv2.imshow("Demo", frame)

    if cv2.waitKey(1) == 27:
        break

    if cv2.waitKey(10) == 27:
        break
    # esc값 누를 시 종료
    # TODO: 어플용 Command key로 바꾸기
webcam.release()
cv2.destroyAllWindows()
