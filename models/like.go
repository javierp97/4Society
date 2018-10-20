package models

import (
	gormTools "github.com/jinzhu/gorm"
)

type Like struct {
	gormTools.Model `valid:"-"`
	Userid          uint `valid:"-"`
	Projectid       uint `valid:"-"`
}

func (t *Like) CreateLike() uint {
	DB.Create(t)
	return t.ID
}

func ReadAllLikes() ([]Like, error) {
	var likes []Like
	err := DB.Find(&likes).Error
	return likes, err
}

func ExistsLike(userid uint, projectid uint) (bool, error) {
	var aux Like
	err := DB.Where("Userid = ? AND Projectid = ?", userid, projectid).First(&aux).Error
	exists := (aux.Userid == userid && aux.Projectid == projectid)
	return exists, err
}

func FindLikeByID(id uint) (Like, error) {
	var aux Like
	err := DB.First(&aux, id).Error
	return aux, err
}

func (t Like) DeleteLike() error {
	return DB.Delete(&t).Error
}
