package core

func CultivatingData[T comparable](data []T, err error) ([]T, error) {
	if err != nil {
		return nil, err
	}

	return data, nil
}

// TODO: скорее всего стоит убрать из-за ненадобности
func CultivatingError(err error) error {
	if err != nil {
		return err
	}

	return nil
}
