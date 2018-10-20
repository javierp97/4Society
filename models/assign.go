package models

import (
	gormTools "github.com/jinzhu/gorm"
)

type Assign struct {
	gormTools.Model `valid:"-"`
	Userid          uint `valid:"-"`
	Tagid           uint `valid:"-"`
}

func (a *Assign) CreateAssign() uint {
	DB.Create(a)
	return a.ID
}

func ReadAllAssigns() ([]Assign, error) {
	var assigns []Assign
	err := DB.Find(&assigns).Error
	return assigns, err
}

func FindAssignByUserid(iduser uint) ([]Assign, error) {
	var assigns []Assign
	err := DB.Where("Userid = ?", iduser).Find(&assigns).Error
	return assigns, err
}

func FindAssignByTagId(idtag uint) ([]Assign, error) {
	var assigns []Assign
	err := DB.Where("Tagid = ?", idtag).Find(&assigns).Error
	return assigns, err
}

func FindAssignByID(id uint) (Assign, error) {
	var aux Assign
	err := DB.First(&aux, id).Error
	return aux, err
}

func FindAssignByTagUser(iduser uint, idtag uint) (Assign, error) {
	var aux Assign
	err := DB.Where("Userid = ? AND Tagid = ?", iduser, idtag).First(&aux).Error
	return aux, err
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
