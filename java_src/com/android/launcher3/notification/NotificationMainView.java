package com.android.launcher3.notification;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.notification.NotificationMainView;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import y0.e;
/* loaded from: classes.dex */
public class NotificationMainView extends LinearLayout {
    public static final ItemInfo NOTIFICATION_ITEM_INFO = new ItemInfo();
    private final GradientDrawable mBackground;
    private int mBackgroundColor;
    private View mHeader;
    private TextView mHeaderCount;
    private View mIconView;
    private View mMainView;
    private final int mMaxElevation;
    private final int mMaxTransX;
    private NotificationInfo mNotificationInfo;
    private final int mNotificationSpace;
    private final Rect mOutline;
    private TextView mTextView;
    private TextView mTitleView;

    public NotificationMainView(Context context) {
        this(context, null, 0);
    }

    public static void a(NotificationMainView notificationMainView, ValueAnimator valueAnimator) {
        notificationMainView.getClass();
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        notificationMainView.mBackgroundColor = intValue;
        notificationMainView.mBackground.setColor(intValue);
        NotificationInfo notificationInfo = notificationMainView.mNotificationInfo;
        if (notificationInfo != null) {
            notificationMainView.mIconView.setBackground(notificationInfo.getIconForBackground(notificationMainView.mBackgroundColor, notificationMainView.getContext()));
        }
    }

    public final void applyNotificationInfo(NotificationInfo notificationInfo) {
        this.mNotificationInfo = notificationInfo;
        if (notificationInfo == null) {
            return;
        }
        NotificationListener instanceIfConnected = NotificationListener.getInstanceIfConnected();
        if (instanceIfConnected != null) {
            instanceIfConnected.setNotificationsShown(new String[]{this.mNotificationInfo.notificationKey});
        }
        NotificationInfo notificationInfo2 = this.mNotificationInfo;
        CharSequence charSequence = notificationInfo2.title;
        CharSequence charSequence2 = notificationInfo2.text;
        if (TextUtils.isEmpty(charSequence) || TextUtils.isEmpty(charSequence2)) {
            this.mTitleView.setMaxLines(2);
            this.mTitleView.setText(TextUtils.isEmpty(charSequence) ? charSequence2.toString() : charSequence.toString());
            this.mTextView.setVisibility(8);
        } else {
            this.mTitleView.setText(charSequence.toString());
            this.mTextView.setText(charSequence2.toString());
        }
        this.mIconView.setBackground(this.mNotificationInfo.getIconForBackground(this.mBackgroundColor, getContext()));
        NotificationInfo notificationInfo3 = this.mNotificationInfo;
        if (notificationInfo3.intent != null) {
            setOnClickListener(notificationInfo3);
        }
        setTag(NOTIFICATION_ITEM_INFO);
    }

    public final boolean canChildBeDismissed() {
        NotificationInfo notificationInfo = this.mNotificationInfo;
        return notificationInfo != null && notificationInfo.dismissable;
    }

    public final NotificationInfo getNotificationInfo() {
        return this.mNotificationInfo;
    }

    public final void onChildDismissed() {
        ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(getContext());
        if (activityContext.getPopupDataProvider() == null) {
            return;
        }
        String str = this.mNotificationInfo.notificationKey;
        NotificationListener instanceIfConnected = NotificationListener.getInstanceIfConnected();
        if (instanceIfConnected != null) {
            instanceIfConnected.cancelNotificationFromLauncher(str);
        }
        activityContext.getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_NOTIFICATION_DISMISSED);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.text_and_background);
        this.mTitleView = (TextView) viewGroup.findViewById(R.id.title);
        this.mTextView = (TextView) viewGroup.findViewById(R.id.text);
        this.mIconView = findViewById(R.id.popup_item_icon);
        this.mHeaderCount = (TextView) findViewById(R.id.notification_count);
        this.mHeader = findViewById(R.id.header);
        this.mMainView = findViewById(R.id.main_view);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
        this.mOutline.set(0, 0, getWidth(), getHeight());
        invalidateOutline();
    }

    public final void onPrimaryDrag(float f4) {
        float abs = Math.abs(f4);
        int width = getWidth();
        if (abs < 0.4f) {
            setAlpha(1.0f);
            setContentAlpha(1.0f);
            setElevation(this.mMaxElevation);
        } else if (abs < 0.6f) {
            setAlpha(1.0f);
            Interpolator interpolator = e.f12949m;
            setContentAlpha(Utilities.mapToRange(abs, 0.4f, 0.6f, 1.0f, 0.0f, interpolator));
            setElevation(Utilities.mapToRange(abs, 0.4f, 0.6f, this.mMaxElevation, 0.0f, interpolator));
        } else {
            setAlpha(Utilities.mapToRange(abs, 0.6f, 0.7f, 1.0f, 0.0f, e.f12949m));
            setContentAlpha(0.0f);
            setElevation(0.0f);
        }
        setTranslationX(width * f4);
    }

    public final void onSecondaryDrag(float f4) {
        float abs = Math.abs(f4);
        if (abs < 0.3f) {
            setAlpha(0.0f);
            setContentAlpha(0.0f);
            setElevation(0.0f);
        } else if (abs < 0.5f) {
            setAlpha(Utilities.mapToRange(abs, 0.3f, 0.5f, 0.0f, 1.0f, e.f12949m));
            setContentAlpha(0.0f);
            setElevation(0.0f);
        } else {
            setAlpha(1.0f);
            setContentAlpha(abs > 0.6f ? 1.0f : Utilities.mapToRange(abs, 0.5f, 0.6f, 0.0f, 1.0f, e.f12949m));
            setElevation(Utilities.mapToRange(abs, 0.5f, 1.0f, 0.0f, this.mMaxElevation, e.f12949m));
        }
        int width = (int) (getWidth() * abs);
        int mapToRange = (int) (abs > 0.7f ? Utilities.mapToRange(abs, 0.7f, 1.0f, this.mNotificationSpace, 0.0f, e.f12949m) : this.mNotificationSpace);
        int i4 = (f4 > 0.0f ? 1 : (f4 == 0.0f ? 0 : -1));
        if (i4 < 0) {
            this.mOutline.left = Math.max(0, (getWidth() - width) + mapToRange);
            this.mOutline.right = getWidth();
        } else {
            this.mOutline.right = Math.min(getWidth(), width - mapToRange);
            this.mOutline.left = 0;
        }
        float f5 = (1.0f - abs) * this.mMaxTransX;
        if (i4 >= 0) {
            f5 = -f5;
        }
        this.mHeader.setTranslationX(f5);
        this.mMainView.setTranslationX(f5);
        invalidateOutline();
    }

    public final void setContentAlpha(float f4) {
        this.mHeader.setAlpha(f4);
        this.mMainView.setAlpha(f4);
    }

    public final void updateBackgroundColor(int i4, AnimatorSet animatorSet) {
        ValueAnimator ofArgb = ValueAnimator.ofArgb(this.mBackgroundColor, i4);
        ofArgb.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: P0.j
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                NotificationMainView.a(NotificationMainView.this, valueAnimator);
            }
        });
        animatorSet.play(ofArgb);
    }

    public final void updateHeader(int i4) {
        String valueOf;
        int i5;
        if (i4 <= 1) {
            valueOf = "";
            i5 = 4;
        } else {
            valueOf = String.valueOf(i4);
            i5 = 0;
        }
        this.mHeaderCount.setText(valueOf);
        this.mHeaderCount.setVisibility(i5);
    }

    public NotificationMainView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NotificationMainView(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    public NotificationMainView(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.mOutline = new Rect();
        final float dialogCornerRadius = Themes.getDialogCornerRadius(context);
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.mBackground = gradientDrawable;
        gradientDrawable.setColor(GraphicsUtils.getAttrColor(R.attr.popupColorPrimary, context));
        gradientDrawable.setCornerRadius(dialogCornerRadius);
        setBackground(gradientDrawable);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.deep_shortcuts_elevation);
        this.mMaxElevation = dimensionPixelSize;
        setElevation(dimensionPixelSize);
        this.mMaxTransX = getResources().getDimensionPixelSize(R.dimen.notification_max_trans);
        this.mNotificationSpace = getResources().getDimensionPixelSize(R.dimen.notification_space);
        setClipToOutline(true);
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.launcher3.notification.NotificationMainView.1
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                outline.setRoundRect(NotificationMainView.this.mOutline, dialogCornerRadius);
            }
        });
    }
}
