package com.android.launcher3.notification;

import E.a;
import android.app.ActivityOptions;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.service.notification.StatusBarNotification;
import android.view.View;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class NotificationInfo implements View.OnClickListener {
    public final boolean autoCancel;
    public final boolean dismissable;
    public final PendingIntent intent;
    private int mIconColor;
    private Drawable mIconDrawable;
    private boolean mIsIconLarge;
    private final ItemInfo mItemInfo;
    public final String notificationKey;
    public final CharSequence text;
    public final CharSequence title;

    public NotificationInfo(Context context, StatusBarNotification statusBarNotification, ItemInfo itemInfo) {
        new PackageUserKey(statusBarNotification.getPackageName(), statusBarNotification.getUser());
        this.notificationKey = statusBarNotification.getKey();
        Notification notification = statusBarNotification.getNotification();
        this.title = notification.extras.getCharSequence("android.title");
        this.text = notification.extras.getCharSequence("android.text");
        Icon largeIcon = notification.getBadgeIconType() == 1 ? null : notification.getLargeIcon();
        if (largeIcon == null) {
            Icon smallIcon = notification.getSmallIcon();
            this.mIconDrawable = smallIcon != null ? smallIcon.loadDrawable(context) : null;
            this.mIconColor = statusBarNotification.getNotification().color;
            this.mIsIconLarge = false;
        } else {
            this.mIconDrawable = largeIcon.loadDrawable(context);
            this.mIsIconLarge = true;
        }
        if (this.mIconDrawable == null) {
            this.mIconDrawable = LauncherAppState.getInstance(context).getIconCache().getDefaultIcon(statusBarNotification.getUser()).newIcon(0, context);
        }
        this.intent = notification.contentIntent;
        int i4 = notification.flags;
        this.autoCancel = (i4 & 16) != 0;
        this.dismissable = (i4 & 2) == 0;
        this.mItemInfo = itemInfo;
    }

    public final Drawable getIconForBackground(int i4, Context context) {
        if (this.mIsIconLarge) {
            return this.mIconDrawable;
        }
        int i5 = this.mIconColor;
        if (i5 == 0) {
            i5 = context.getColor(R.color.notification_icon_default_color);
        }
        if (a.e(i5, i4) < 4.5d) {
            double[] dArr = new double[3];
            a.g(i4, dArr);
            double d4 = dArr[0];
            a.g(i5, dArr);
            double d5 = dArr[0];
            boolean z4 = d4 < 50.0d;
            double d6 = z4 ? d5 : 0.0d;
            if (z4) {
                d5 = 100.0d;
            }
            double d7 = dArr[1];
            double d8 = dArr[2];
            for (int i6 = 0; i6 < 15 && d5 - d6 > 1.0E-5d; i6++) {
                double d9 = (d6 + d5) / 2.0d;
                if (a.e(a.a(d9, d7, d8), i4) <= 4.5d ? !z4 : z4) {
                    d5 = d9;
                } else {
                    d6 = d9;
                }
            }
            i5 = a.a(d6, d7, d8);
        }
        this.mIconColor = i5;
        Drawable mutate = this.mIconDrawable.mutate();
        mutate.setTintList(null);
        mutate.setTint(this.mIconColor);
        return mutate;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.intent == null) {
            return;
        }
        ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(view.getContext());
        ActivityOptions makeClipRevealAnimation = ActivityOptions.makeClipRevealAnimation(view, 0, 0, view.getWidth(), view.getHeight());
        Utilities.allowBGLaunch(makeClipRevealAnimation);
        try {
            this.intent.send(null, 0, null, null, null, null, makeClipRevealAnimation.toBundle());
            activityContext.getStatsLogManager().logger().withItemInfo(this.mItemInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_NOTIFICATION_LAUNCH_TAP);
        } catch (PendingIntent.CanceledException e4) {
            e4.printStackTrace();
        }
        if (this.autoCancel && activityContext.getPopupDataProvider() != null) {
            String str = this.notificationKey;
            NotificationListener instanceIfConnected = NotificationListener.getInstanceIfConnected();
            if (instanceIfConnected != null) {
                instanceIfConnected.cancelNotificationFromLauncher(str);
            }
        }
        AbstractFloatingView.closeOpenViews(activityContext, true, 262146);
    }
}
