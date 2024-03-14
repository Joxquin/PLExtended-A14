package M2;

import android.app.smartspace.uitemplatedata.CarouselTemplateData;
import com.google.android.systemui.smartspace.uitemplate.CarouselTemplateCard;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        CarouselTemplateData.CarouselItem carouselItem = (CarouselTemplateData.CarouselItem) obj;
        int i4 = CarouselTemplateCard.f8409e;
        return (carouselItem.getImage() == null || carouselItem.getLowerText() == null || carouselItem.getUpperText() == null) ? false : true;
    }
}
