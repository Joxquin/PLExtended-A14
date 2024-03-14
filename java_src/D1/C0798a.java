package d1;

import android.content.Context;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.MainThreadInitializedObject;
/* renamed from: d1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0798a implements MainThreadInitializedObject.ObjectProvider {
    @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
    public final Object get(Context context) {
        return PluginManagerWrapper.a(context);
    }
}
