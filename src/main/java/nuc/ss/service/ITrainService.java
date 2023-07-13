package nuc.ss.service;

import nuc.ss.bean.Completion;
import nuc.ss.bean.Train;
import nuc.ss.bean.TrainData;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ITrainService {
    List<Train> getAllTrain();
    List<Completion> getAllCompletion();
    void insertTrain(Train train);
    Train getByIdTrain(Integer id);
    Train getByEmpIdTrain(Integer id);
    void deleteTrain(Integer id);
    void updateTrain(Train train);
    List<TrainData> getAllTrainDate();
    TrainData getByIdTrainData(Integer id);
    void insertTrainData(TrainData trainData);
    void updateTrainData(TrainData trainData);
    void deleteTrainData(Integer id);
    List<TrainData> getTrainDataBytitle(String title);
}
