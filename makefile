# Exercise 7

all: temp/creator_week4.csv output/creator_top10_week4.csv

temp/creator_week4.csv: src/build_temp.R data/video_view.csv data/creators.csv
	Rscript src/build_temp.R

output/creator_top10_week4.csv: src/build_output.R temp/creators_week4.csv
	Rscript src/build_output.R

clean:
	powershell -Command "Remove-Item -Path temp/*.csv, output/*.csv -ErrorAction SilentlyContinue"

	
	
