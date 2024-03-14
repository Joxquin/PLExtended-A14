package com.android.launcher3.util;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes.dex */
public interface ResourceBasedOverride {

    /* loaded from: classes.dex */
    public final class Overrides {
        public static ResourceBasedOverride getObject(int i4, Context context, Class cls) {
            String string = context.getString(i4);
            if (!TextUtils.isEmpty(string)) {
                try {
                    return (ResourceBasedOverride) Class.forName(string).getDeclaredConstructor(Context.class).newInstance(context);
                } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e4) {
                    Log.e("Overrides", "Bad overriden class", e4);
                }
            }
            try {
                return (ResourceBasedOverride) cls.newInstance();
            } catch (IllegalAccessException | InstantiationException e5) {
                throw new RuntimeException(e5);
            }
        }
    }
}
