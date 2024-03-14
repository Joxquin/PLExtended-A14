package com.android.launcher3.model;

import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.util.Executors;
import java.util.function.Consumer;
/* renamed from: com.android.launcher3.model.z0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0403z0 implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        ModelWriter.ModelTask modelTask = (ModelWriter.ModelTask) obj;
        modelTask.getClass();
        Executors.MODEL_EXECUTOR.execute(modelTask);
    }
}
