package models

import (
	gormTools "github.com/jinzhu/gorm"
)

type Project struct {
	gormTools.Model `valid:"-"`
	Title           string `valid:"-"`
	Description     string `valid:"-"`
	Image           string `valid:"-"`
	Date            string `valid:"-"`
	Place           string `valid:"-"`
	TAG1            string `valid:"-"`
	TAG2            string `valid:"-"`
	TAG3            string `valid:"-"`
	EconomicSupport bool   `valid:"-"`
	MaterialSupport bool   `valid:"-"`
	HumanSupport    bool   `valid:"-"`
	IdCreator       uint   `valid:"-"`
	Punctuation     uint   `valid:"="`
}

func (p *Project) CreateProject() uint {
	DB.Create(p)
	return p.ID
}

func ReadAllProjects() ([]Project, error) {
	var projects []Project
	err := DB.Find(&projects).Error
	return projects, err
}

func (p Project) UpdateProject() error {
	var aux Project
	DB.First(&aux, p.ID)
	aux = p
	return DB.Save(&aux).Error
}

func (p Project) DeleteProject() error {
	return DB.Delete(&p).Error
}

func IncreasePunctuation(id uint) error {
	var aux Project
	err := DB.First(&aux, id).Error
	aux.Punctuation += 1
	if err == nil {
		return DB.Save(&aux).Error
	}
	return err
}

func GetProject(projectID uint) (Project, error) {
	var p Project
	err := DB.First(&p, projectID).Error
	return p, err
}
