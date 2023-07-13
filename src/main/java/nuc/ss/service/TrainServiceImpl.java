package nuc.ss.service;

import nuc.ss.bean.Completion;
import nuc.ss.bean.Train;
import nuc.ss.bean.TrainData;
import nuc.ss.mapper.TrainMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TrainServiceImpl implements ITrainService{
    @Autowired
    private TrainMapper trainMapper;
    @Override
    public List<Train> getAllTrain() {
        return trainMapper.getAllTrain();
    }

    @Override
    public List<Completion> getAllCompletion() {
        return trainMapper.getAllCompletion();
    }

    @Override
    public void insertTrain(Train train) {
        trainMapper.insertTrain(train);
    }

    @Override
    public Train getByIdTrain(Integer id) {
        return trainMapper.getByIdTrain(id);
    }

    @Override
    public Train getByEmpIdTrain(Integer id) {
        return trainMapper.getByEmpIdTrain(id);
    }

    @Override
    public void deleteTrain(Integer id) {
        trainMapper.deleteTrain(id);
    }

    @Override
    public void updateTrain(Train train) {
        trainMapper.updateTrain(train);
    }

    @Override
    public List<TrainData> getAllTrainDate() {
        return trainMapper.getAllTrainDate();
    }

    @Override
    public TrainData getByIdTrainData(Integer id) {
        return trainMapper.getByIdTrainData(id);
    }

    @Override
    public void insertTrainData(TrainData trainData) {
        trainMapper.insertTrainData(trainData);
    }

    @Override
    public void updateTrainData(TrainData trainData) {
        trainMapper.updateTrainData(trainData);
    }

    @Override
    public void deleteTrainData(Integer id) {
        trainMapper.deleteTrainData(id);
    }

    @Override
    public List<TrainData> getTrainDataBytitle(String title) {
        String title1 = "%" + title + "%";
        return trainMapper.getTrainDataBytitle(title1);
    }
}
