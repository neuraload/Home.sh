#!/usr/bin/python2
# Simple nutrient calculator
# by balM

my_dict = {'chicken':(40, 50, 10),
        'pork':(50, 30, 20)
         }

foods = raw_input("Enter your food: ")

foods_list = foods.split(',')

empty_list = []
for food in foods_list:
    if food in my_dict:
        empty_list.append(list(my_dict[food]))
    else:
        print '%s has no nutritional information and will not be included in the calculation' % food

values = [sum(x) for x in zip(*empty_list)]

print 'Total protein = %d, Total Carbs = %d, Total Fat = %d' % (values[0],values[1],values[2])
