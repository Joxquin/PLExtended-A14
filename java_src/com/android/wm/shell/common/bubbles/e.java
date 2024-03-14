package com.android.wm.shell.common.bubbles;

import android.content.Context;
import android.content.res.Configuration;
import android.widget.FrameLayout;
import android.widget.ImageView;
/* loaded from: classes.dex */
public final class e extends FrameLayout {

    /* renamed from: d  reason: collision with root package name */
    public int f6321d;

    /* renamed from: e  reason: collision with root package name */
    public int f6322e;

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f6323f;

    public e(Context context) {
        super(context);
        ImageView imageView = new ImageView(getContext());
        this.f6323f = imageView;
        addView(imageView);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Context context = getContext();
        int i4 = this.f6321d;
        Object obj = B.c.f105a;
        setBackground(context.getDrawable(i4));
        int dimensionPixelSize = getResources().getDimensionPixelSize(this.f6322e);
        this.f6323f.setLayoutParams(new FrameLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize, 17));
    }
}
