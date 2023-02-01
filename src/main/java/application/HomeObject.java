package application;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
public class HomeObject {

    private String yearOfAssesment;
    private String propertyClass;
    private String sqft;
    private String buildingValue;
    private String assessedValue;
    private String salePrice;
    private String saleDate;
    private String previousAssesedValue;
    private String ownerInfo;

}
