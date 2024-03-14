package O0;

import com.android.launcher3.model.data.AppInfo;
import java.util.Comparator;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        AppInfo appInfo = (AppInfo) obj;
        AppInfo appInfo2 = (AppInfo) obj2;
        int hashCode = appInfo.user.hashCode() - appInfo2.user.hashCode();
        return hashCode != 0 ? hashCode : appInfo.componentName.compareTo(appInfo2.componentName);
    }
}
