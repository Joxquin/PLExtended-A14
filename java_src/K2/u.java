package K2;

import android.app.smartspace.SmartspaceTarget;
import android.os.Parcelable;
import com.google.android.systemui.smartspace.BcSmartspaceView;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class u implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1008a;

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f1008a) {
            case 0:
                return ((SmartspaceTarget) obj).getSmartspaceTargetId();
            default:
                boolean z4 = BcSmartspaceView.f8326t;
                return ((Parcelable) obj).getSmartspaceTargetId();
        }
    }
}
