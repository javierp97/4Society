package models

import (
	gormTools "github.com/jinzhu/gorm"
)

type TAG struct {
	gormTools.Model `valid:"-"`
	Tagtype         string `valid:"-"`
}

func (t *TAG) CreateTAG() uint {
	DB.Create(t)
	return t.ID
}

func ReadAllTags() ([]TAG, error) {
	var tags []TAG
	err := DB.Find(&tags).Error
	return tags, err
}

func (t TAG) UpdateTAG() error {
	var aux TAG
	DB.First(&aux, t.ID)
	aux = t
	return DB.Save(&aux).Error
}

func (t TAG) DeleteTAG() error {
	return DB.Delete(&t).Error
}
