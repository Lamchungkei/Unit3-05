# Created by: Kay Lin
# Created on: 3rd-Oct-2017
# Created for: ICS3U
# This program shows calculate factorial

import ui

def calculate_touch_up_inside(sender):
    #input
    num = int(view['integer_textfield'].text)
    
    #process
    if (num < 0):
       view['answer_label'].text = 'Please input a positive integer.'
    elif (num == 0):
         view['answer_label'].text = 'The factorial is 1.'
    else:
        factorial = count = 1
        while (count < num):
            count = count + 1
            factorial = factorial * count
        view['answer_label'].text = 'The factorial is: ' + str(factorial)

view = ui.load_view()
view.present('full_sheet')
