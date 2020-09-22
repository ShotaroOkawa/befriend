class CountriesController < ApplicationController
  def index
    @asia_countries = Country.find_all_by_region "Asia"
    @europe_countries = Country.find_all_by_region "Europe"
    @north_america_countries = Country.find_all_by_region "North America"
    @south_america_countries = Country.find_all_by_region "South America"
    @central_america_countries = Country.find_all_by_region "Central America"
    @oceania_countries = Country.find_all_by_region "Oceania"
    @africa_countries = Country.find_all_by_region "Africa"
    @middle_east_countries = Country.find_all_by_region "Middle East"
  end

  def show
    @country = Country.find(params[:id])
    @articles = Article.where(country_id: params[:id])
    @questions = Question.where(country_id: params[:id])
  end

end
