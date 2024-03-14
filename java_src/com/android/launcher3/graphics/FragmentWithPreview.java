package com.android.launcher3.graphics;

import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;
/* loaded from: classes.dex */
public class FragmentWithPreview extends Fragment {
    private Context mPreviewContext;

    public final void enterPreviewMode(Context context) {
        this.mPreviewContext = context;
    }

    @Override // android.app.Fragment
    public final Context getContext() {
        Context context = this.mPreviewContext;
        return context != null ? context : getActivity();
    }

    public final boolean isInPreviewMode() {
        return this.mPreviewContext != null;
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        onInit();
    }

    public void onInit() {
    }
}
