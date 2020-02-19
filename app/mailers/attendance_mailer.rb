class AttendanceMailer < ApplicationMailer
    defaut from 'no-replu@eventbrite.fr'
   def attendance_email(attendance)
   
     @attendance = attendance

    
     mail(to: @attendance.organiser.email, subject: 'Un nouveau participent vient de s inscire à votre événement')
   end
end
