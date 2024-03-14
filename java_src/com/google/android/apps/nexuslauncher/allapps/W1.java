package com.google.android.apps.nexuslauncher.allapps;

import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
/* loaded from: classes.dex */
public final /* synthetic */ class W1 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6964d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ SearchResultQSTile f6965e;

    public /* synthetic */ W1(SearchResultQSTile searchResultQSTile, int i4) {
        this.f6964d = i4;
        this.f6965e = searchResultQSTile;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f6964d) {
            case 0:
                SearchResultQSTile searchResultQSTile = this.f6965e;
                int i4 = SearchResultQSTile.f6764F;
                searchResultQSTile.getClass();
                int intValue = ((Integer) valueAnimator.getAnimatedValue("background")).intValue();
                int intValue2 = ((Integer) valueAnimator.getAnimatedValue("label")).intValue();
                int intValue3 = ((Integer) valueAnimator.getAnimatedValue("secondaryLabel")).intValue();
                int intValue4 = ((Integer) valueAnimator.getAnimatedValue("chevron")).intValue();
                searchResultQSTile.f6789x.mutate().setTint(intValue);
                searchResultQSTile.f6766B = intValue;
                searchResultQSTile.mLabel.setTextColor(intValue2);
                searchResultQSTile.mSecondaryLabel.setTextColor(intValue3);
                searchResultQSTile.mChevronIcon.setImageTintList(ColorStateList.valueOf(intValue4));
                return;
            default:
                SearchResultQSTile searchResultQSTile2 = this.f6965e;
                int i5 = SearchResultQSTile.f6764F;
                searchResultQSTile2.getClass();
                int intValue5 = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                searchResultQSTile2.f6790y.setImageTintList(ColorStateList.valueOf(intValue5));
                searchResultQSTile2.f6767C = intValue5;
                return;
        }
    }
}
