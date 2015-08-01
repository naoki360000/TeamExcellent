require "TeamExcellent/version" 
require 'csv' 
 
 
module TeamExcellent 
 
 
   class Main 
     def evaluate(n) 
       case 
       when n == 0 then 
         '0'  
       when n >= 1 && n <= 59 then 
         '1'  
       when n >= 60 && n <= 69 then 
         '2'  
       when n >= 70 && n <= 79 then 
         '3'  
       when n >= 80 && n <= 89 then 
         '4'  
       when n >= 90 && n <= 100 then 
         '5'  
       else 
         '0' 
       end 
     end 
 
 
     def calculate 
       sum = 0 
       num = 0 
       ary = [] 
       CSV.foreach("result.csv", {:headers => true, :encoding => "UTF-8", :quote_char => '"'}) do   |row| 
       #    p row 
       #    puts row[0] # 一番目の要素にアクセス 
       #    puts row.field("Name")  # ヘッダー名で要素にアクセス 
           puts row.field("Name")  + "\t" + row.field("Subject") + "\t"   + row.field("Result") 
             + "\t" + evaluate(row.field("Result").to_i ) 
 
 
           ary.push(row.field("Result").to_i) 
           sum += row.field("Result").to_i 
           num += 1 
       end 
 
 
       puts "Sum: " + sum.to_s 
       puts "Num: " + num.to_s 
       puts "Avg: " + (sum.to_f / num.to_f).to_s 
       puts "Min: " + (ary.min).to_s 
       puts "Max: " + (ary.max).to_s 
 
 
     end 
   end 
 end 

