package models

import (
	gormTools "github.com/jinzhu/gorm"
)

type SavedNew struct {
	gormTools.Model `valid:"-"`
	Newid           uint `valid:"-"`
	Userid          uint `valid:"-"`
}

func (n *SavedNew) CreateSavedNew() uint {
	DB.Create(n)
	return n.ID
}

func FindAllSavedNew() ([]SavedNew, error) {
	var SavedNews []SavedNew
	err := DB.Find(&SavedNews).Error
	return SavedNews, err
}

func FindSavedNewByID(id uint) (SavedNew, error) {
	var aux SavedNew
	err := DB.First(&aux, id).Error
	return aux, err
}

func (n SavedNew) UpdateSavedNew() error {
	var aux SavedNew
	DB.First(&aux, n.ID)
	aux = n
	return DB.Save(&aux).Error
}

func (n SavedNew) DeleteSavedNew() error {
	return DB.Delete(&n).Error
}
