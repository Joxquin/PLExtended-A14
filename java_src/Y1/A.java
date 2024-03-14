package Y1;

import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.util.ComponentKey;
/* loaded from: classes.dex */
public class A extends AppInfo {

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ int f2273e = 0;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f2274d;

    public A(ComponentKey componentKey, boolean z4) {
        this.intent = AppInfo.makeLaunchIntent(componentKey.componentName);
        this.componentName = componentKey.componentName;
        this.user = componentKey.user;
        this.itemType = 0;
        this.f2274d = z4;
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon, com.android.launcher3.model.data.ItemInfo
    public final boolean isDisabled() {
        return this.f2274d;
    }
}
