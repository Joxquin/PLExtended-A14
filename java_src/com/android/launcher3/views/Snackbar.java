package com.android.launcher3.views;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class Snackbar extends AbstractFloatingView {
    private final ActivityContext mActivity;
    private Runnable mOnDismissed;

    public Snackbar(Context context) {
        super(context, null, 0);
        this.mActivity = (ActivityContext) ActivityContext.lookupContext(context);
        LinearLayout.inflate(context, R.layout.snackbar, this);
    }

    public static /* synthetic */ void a(Runnable runnable, Snackbar snackbar) {
        if (runnable != null) {
            runnable.run();
        }
        snackbar.mOnDismissed = null;
        snackbar.close(true);
    }

    public static void b(Snackbar snackbar) {
        snackbar.mActivity.getDragLayer().removeView(snackbar);
        Runnable runnable = snackbar.mOnDismissed;
        if (runnable != null) {
            runnable.run();
        }
    }

    public static void show(Context context, int i4, int i5, Runnable runnable, Runnable runnable2) {
        show(context, context.getResources().getString(i4), i5, runnable, runnable2);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void handleClose(boolean z4) {
        if (this.mIsOpen) {
            if (z4) {
                animate().alpha(0.0f).withLayer().setStartDelay(0L).setDuration(180L).setInterpolator(y0.e.f12957u).withEndAction(new v(this, 1)).start();
            } else {
                animate().cancel();
                this.mActivity.getDragLayer().removeView(this);
                Runnable runnable = this.mOnDismissed;
                if (runnable != null) {
                    runnable.run();
                }
            }
            this.mIsOpen = false;
        }
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (i4 & 128) != 0;
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || this.mActivity.getDragLayer().isEventOverView(this, motionEvent)) {
            return false;
        }
        close(true);
        return false;
    }

    public static void show(Context context, String str, int i4, Runnable runnable, final Runnable runnable2) {
        int i5;
        float f4;
        AbstractFloatingView.closeOpenViews((ActivityContext) context, true, 128);
        final Snackbar snackbar = new Snackbar(context);
        snackbar.setOrientation(0);
        snackbar.setGravity(16);
        Resources resources = context.getResources();
        snackbar.setElevation(resources.getDimension(R.dimen.snackbar_elevation));
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.snackbar_padding);
        snackbar.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        snackbar.setBackgroundResource(R.drawable.round_rect_primary);
        snackbar.mIsOpen = true;
        ActivityContext activityContext = (ActivityContext) context;
        BaseDragLayer dragLayer = activityContext.getDragLayer();
        dragLayer.addView(snackbar);
        BaseDragLayer.LayoutParams layoutParams = (BaseDragLayer.LayoutParams) snackbar.getLayoutParams();
        ((FrameLayout.LayoutParams) layoutParams).gravity = 81;
        ((FrameLayout.LayoutParams) layoutParams).height = resources.getDimensionPixelSize(R.dimen.snackbar_height);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.snackbar_max_margin_left_right);
        int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.snackbar_min_margin_left_right);
        int dimensionPixelSize4 = resources.getDimensionPixelSize(R.dimen.snackbar_margin_bottom);
        int dimensionPixelSize5 = resources.getDimensionPixelSize(R.dimen.snackbar_max_width);
        Rect insets = activityContext.getDeviceProfile().getInsets();
        int min = Math.min(((dragLayer.getWidth() - (dimensionPixelSize3 * 2)) - insets.left) - insets.right, dimensionPixelSize5);
        ((FrameLayout.LayoutParams) layoutParams).width = Math.min(((dragLayer.getWidth() - (dimensionPixelSize2 * 2)) - insets.left) - insets.right, dimensionPixelSize5);
        DeviceProfile deviceProfile = activityContext.getDeviceProfile();
        if (deviceProfile.isTaskbarPresent) {
            i5 = deviceProfile.getTaskbarOffsetY() + deviceProfile.taskbarHeight;
        } else {
            i5 = insets.bottom;
        }
        layoutParams.setMargins(0, 0, 0, dimensionPixelSize4 + i5);
        TextView textView = (TextView) snackbar.findViewById(R.id.label);
        textView.setText(str);
        TextView textView2 = (TextView) snackbar.findViewById(R.id.action);
        if (i4 != -1) {
            String string = resources.getString(i4);
            f4 = textView2.getPaint().measureText(string) + textView2.getPaddingRight() + textView2.getPaddingLeft();
            textView2.setText(string);
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.views.u
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Snackbar.a(runnable2, snackbar);
                }
            });
        } else {
            textView2.setVisibility(8);
            f4 = 0.0f;
        }
        int paddingLeft = (dimensionPixelSize * 2) + textView.getPaddingLeft() + textView.getPaddingRight() + ((int) (textView.getPaint().measureText(str) + f4));
        if (paddingLeft > ((FrameLayout.LayoutParams) layoutParams).width) {
            if (paddingLeft <= min) {
                ((FrameLayout.LayoutParams) layoutParams).width = paddingLeft;
            } else {
                int dimensionPixelSize6 = resources.getDimensionPixelSize(R.dimen.snackbar_content_height);
                float dimension = resources.getDimension(R.dimen.snackbar_min_text_size);
                textView.setLines(2);
                int i6 = dimensionPixelSize6 * 2;
                textView.getLayoutParams().height = i6;
                textView2.getLayoutParams().height = i6;
                textView.setTextSize(0, dimension);
                textView2.setTextSize(0, dimension);
                ((FrameLayout.LayoutParams) layoutParams).height += dimensionPixelSize6;
                ((FrameLayout.LayoutParams) layoutParams).width = min;
            }
        }
        snackbar.mOnDismissed = runnable;
        snackbar.setAlpha(0.0f);
        snackbar.setScaleX(0.8f);
        snackbar.setScaleY(0.8f);
        snackbar.animate().alpha(1.0f).withLayer().scaleX(1.0f).scaleY(1.0f).setDuration(180L).setInterpolator(y0.e.f12961y).start();
        snackbar.postDelayed(new v(snackbar, 0), AccessibilityManagerCompat.getRecommendedTimeoutMillis(context, 4000, 6));
    }
}
