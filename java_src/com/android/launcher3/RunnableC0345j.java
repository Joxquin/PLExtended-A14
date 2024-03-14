package com.android.launcher3;

import android.util.Property;
import com.android.launcher3.icons.FastBitmapDrawable;
/* renamed from: com.android.launcher3.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0345j implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ BubbleTextView f4685d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ FastBitmapDrawable f4686e;

    public /* synthetic */ RunnableC0345j(BubbleTextView bubbleTextView, FastBitmapDrawable fastBitmapDrawable) {
        this.f4685d = bubbleTextView;
        this.f4686e = fastBitmapDrawable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BubbleTextView bubbleTextView = this.f4685d;
        FastBitmapDrawable fastBitmapDrawable = this.f4686e;
        Property property = BubbleTextView.TEXT_ALPHA_PROPERTY;
        bubbleTextView.setIcon(fastBitmapDrawable);
    }
}
