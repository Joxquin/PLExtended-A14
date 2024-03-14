package com.android.launcher3.icons;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import com.android.launcher3.icons.ThemedIconDrawable;
import com.android.launcher3.util.FlagOp;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class BitmapInfo {
    public static final Bitmap LOW_RES_ICON;
    public static final BitmapInfo LOW_RES_INFO;
    private BitmapInfo badgeInfo;
    public final int color;
    public int flags;
    public final Bitmap icon;
    protected Bitmap mMono;
    protected Bitmap mWhiteShadowLayer;

    /* loaded from: classes.dex */
    public interface Extender {
        void drawForPersistence(Canvas canvas);

        BitmapInfo getExtendedInfo(Bitmap bitmap, int i4, BaseIconFactory baseIconFactory, float f4);
    }

    static {
        Bitmap createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);
        LOW_RES_ICON = createBitmap;
        LOW_RES_INFO = new BitmapInfo(createBitmap, 0);
    }

    public BitmapInfo(Bitmap bitmap, int i4) {
        this.icon = bitmap;
        this.color = i4;
    }

    public final void applyFlags(Context context, FastBitmapDrawable fastBitmapDrawable, int i4) {
        d dVar = GraphicsUtils.sOnNewBitmapRunnable;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.disabledIconAlpha});
        float f4 = obtainStyledAttributes.getFloat(0, 1.0f);
        obtainStyledAttributes.recycle();
        fastBitmapDrawable.mDisabledAlpha = f4;
        if ((i4 & 2) == 0) {
            BitmapInfo bitmapInfo = this.badgeInfo;
            if (bitmapInfo != null) {
                fastBitmapDrawable.setBadge(bitmapInfo.newIcon(i4, context));
                return;
            }
            int i5 = this.flags;
            if ((i5 & 2) != 0) {
                fastBitmapDrawable.setBadge(context.getDrawable(fastBitmapDrawable.isThemed() ? R.drawable.ic_instant_app_badge_themed : R.drawable.ic_instant_app_badge));
            } else if ((i5 & 1) != 0) {
                fastBitmapDrawable.setBadge(context.getDrawable(fastBitmapDrawable.isThemed() ? R.drawable.ic_work_app_badge_themed : R.drawable.ic_work_app_badge));
            } else if ((i5 & 4) != 0) {
                fastBitmapDrawable.setBadge(context.getDrawable(fastBitmapDrawable.isThemed() ? R.drawable.ic_clone_app_badge_themed : R.drawable.ic_clone_app_badge));
            }
        }
    }

    public boolean canPersist() {
        return !isNullOrLowRes();
    }

    public final void copyInternalsTo(BitmapInfo bitmapInfo) {
        bitmapInfo.mMono = this.mMono;
        bitmapInfo.mWhiteShadowLayer = this.mWhiteShadowLayer;
        bitmapInfo.flags = this.flags;
        bitmapInfo.badgeInfo = this.badgeInfo;
    }

    public final Bitmap getMono() {
        return this.mMono;
    }

    public final boolean isLowRes() {
        return LOW_RES_ICON == this.icon;
    }

    public final boolean isNullOrLowRes() {
        Bitmap bitmap = this.icon;
        return bitmap == null || bitmap == LOW_RES_ICON;
    }

    public FastBitmapDrawable newIcon(int i4, Context context) {
        FastBitmapDrawable fastBitmapDrawable;
        if (isLowRes()) {
            fastBitmapDrawable = new PlaceHolderIconDrawable(this, context);
        } else if ((i4 & 1) == 0 || this.mMono == null) {
            fastBitmapDrawable = new FastBitmapDrawable(this.icon, this.color);
        } else {
            int[] colors = ThemedIconDrawable.getColors(context);
            fastBitmapDrawable = new ThemedIconDrawable.ThemedConstantState(this, colors[0], colors[1]).newDrawable();
        }
        applyFlags(context, fastBitmapDrawable, i4);
        return fastBitmapDrawable;
    }

    public final void setMonoIcon(Bitmap bitmap, BaseIconFactory baseIconFactory) {
        this.mMono = bitmap;
        this.mWhiteShadowLayer = baseIconFactory.getWhiteShadowLayer();
    }

    public final BitmapInfo withBadgeInfo(BitmapInfo bitmapInfo) {
        BitmapInfo mo2clone = mo2clone();
        mo2clone.badgeInfo = bitmapInfo;
        return mo2clone;
    }

    public final BitmapInfo withFlags(FlagOp flagOp) {
        if (flagOp == FlagOp.NO_OP) {
            return this;
        }
        BitmapInfo mo2clone = mo2clone();
        mo2clone.flags = flagOp.apply(mo2clone.flags);
        return mo2clone;
    }

    @Override // 
    /* renamed from: clone */
    public BitmapInfo mo2clone() {
        BitmapInfo bitmapInfo = new BitmapInfo(this.icon, this.color);
        copyInternalsTo(bitmapInfo);
        return bitmapInfo;
    }
}
