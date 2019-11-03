from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC

tv_show = input("TV Show name: ")

driver = webdriver.Chrome()
driver.get("http://www.imdb.com/?ref_=nv_home")
text_input = driver.find_element_by_xpath("//input[@id='navbar-query']")
text_input.send_keys(tv_show)
if EC.visibility_of((By.ID, "navbar-suggestionsearch")):
	text_input.send_keys(Keys.ARROW_DOWN, Keys.ENTER)
epesode_page = driver.find_element_by_xpath("//a[contains(@class, 'bp_item')]").click()

dates = driver.find_elements_by_class_name('airdate')
infos = driver.find_elements_by_xpath("//div[contains(@class,'hover-over-image zero-z-index ')]/div")

for date in dates:
	print(date.text)

for info in infos:
	print(info.text)

print("\n")
print(len(dates))
print(len(infos))

driver.close()