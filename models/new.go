package models

import (
	gormTools "github.com/jinzhu/gorm"
)

type New struct {
	gormTools.Model `valid:"-"`
	Title           string `valid:"-"`
	Description     string `valid:"-"`
	Image           string `valid:"-"`
	Subtitle        string `valid:"-"`
	TAG1            string `valid:"-"`
	TAG2            string `valid:"-"`
	TAG3            string `valid:"-"`
	IdCreator       uint   `valid:"-"`
}

func (n *New) CreateNew() uint {
	DB.Create(n)
	return n.ID
}

func ReadAllNew() ([]New, error) {
	var news []New
	err := DB.Find(&news).Error
	return news, err
}

func (n New) UpdateNew() error {
	var aux New
	DB.First(&aux, n.ID)
	aux = n
	return DB.Save(&aux).Error
}

func (n New) DeleteNew() error {
	return DB.Delete(&n).Error
}
