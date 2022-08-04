import folium
from folium.plugins import MarkerCluster
import pandas as pd
import html

data = pd.read_table("/Users/Nikon/Desktop/coor.txt", delimiter='\t')
boulder_coords = [48.8, 2.3]
my_map = folium.Map(location = boulder_coords, zoom_start = 4.2, tiles="Stamen Toner")
for i in range(1,21):
	folium.Marker([data['cor_y'][i], data['cor_x'][i]], popup = data['Num'][i]).add_to(my_map)
my_map.save('/Users/Nikon/Desktop/mapOutput.html')
