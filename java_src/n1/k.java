package n1;

import android.content.Context;
/* loaded from: classes.dex */
public interface k {
    default void l(j jVar, Context context) {
        onPluginConnected(jVar, context);
    }

    default void o(j jVar) {
        onPluginDisconnected(jVar);
    }

    @Deprecated
    default void onPluginConnected(j jVar, Context context) {
    }

    @Deprecated
    default void onPluginDisconnected(j jVar) {
    }
}
