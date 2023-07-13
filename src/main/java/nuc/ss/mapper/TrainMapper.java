package nuc.ss.mapper;

import nuc.ss.bean.Completion;
import nuc.ss.bean.Train;
import nuc.ss.bean.TrainData;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TrainMapper {
    List<Train> getAllTrain();
    List<Completion> getAllCompletion();
    void insertTrain(Train train);
    Train getByIdTrain(@Param("id") Integer id);
    Train getByEmpIdTrain(@Param("id") Integer id);
    void deleteTrain(@Param("id")Integer id);
    void updateTrain(Train train);
    List<TrainData> getAllTrainDate();
    TrainData getByIdTrainData(@Param("id")Integer id);
    void insertTrainData(TrainData trainData);
    void updateTrainData(TrainData trainData);
    void deleteTrainData(@Param("id") Integer id);
    List<TrainData> getTrainDataBytitle(@Param("title") String title);
}
