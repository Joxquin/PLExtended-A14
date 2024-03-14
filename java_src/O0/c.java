package O0;

import android.content.ComponentName;
import android.content.Intent;
import com.android.launcher3.logger.LauncherAtom$Application;
import com.android.launcher3.logger.LauncherAtom$Widget;
import com.android.launcher3.model.data.ItemInfo;
import com.android.systemui.shared.system.PeopleProviderUtils;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1416a;

    public /* synthetic */ c(int i4) {
        this.f1416a = i4;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        LauncherAtom$Application.Builder lambda$buildProto$0;
        LauncherAtom$Widget.Builder lambda$buildProto$3;
        String stringExtra;
        switch (this.f1416a) {
            case 0:
                lambda$buildProto$0 = ItemInfo.lambda$buildProto$0((ComponentName) obj);
                return lambda$buildProto$0;
            case 1:
                lambda$buildProto$3 = ItemInfo.lambda$buildProto$3((ComponentName) obj);
                return lambda$buildProto$3;
            case 2:
                stringExtra = ((Intent) obj).getStringExtra(PeopleProviderUtils.EXTRAS_KEY_SHORTCUT_ID);
                return stringExtra;
            default:
                return ((Intent) obj).getComponent();
        }
    }
}
