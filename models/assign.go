package models

import (
	gormTools "github.com/jinzhu/gorm"
)

type Assign struct {
	gormTools.Model `valid:"-"`
	Userid          uint `valid:"-"`
	TAGid           uint `valid:"-"`
}

func (a *Assign) CreateAssign() uint {
	DB.Create(a)
	return a.ID
}

func ReadAllAssign() ([]Assign, error) {
	var assigns []Assign
	err := DB.Find(&assigns).Error
	return assigns, err
}

func (a Assign) UpdateAssign() error {
	var aux Assign
	DB.First(&aux, a.ID)
	aux = a
	return DB.Save(&aux).Error
}

func (a Assign) DeleteAssign() error {
	return DB.Delete(&a).Error
}
