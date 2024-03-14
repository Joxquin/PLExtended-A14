package R0;

import android.content.Context;
import com.android.launcher3.pm.InstallSessionHelper;
import com.android.launcher3.util.MainThreadInitializedObject;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements MainThreadInitializedObject.ObjectProvider {
    @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
    public final Object get(Context context) {
        return new InstallSessionHelper(context);
    }
}
