package com.android.launcher3.popup;

import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.app.RemoteAction;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class RemoteActionShortcut extends SystemShortcut {
    private final RemoteAction mAction;

    public RemoteActionShortcut(RemoteAction remoteAction, BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo, View view) {
        super(0, R.id.action_remote_action_shortcut, baseDraggingActivity, itemInfo, view);
        this.mAction = remoteAction;
    }

    @Override // com.android.launcher3.popup.SystemShortcut
    public final AccessibilityNodeInfo.AccessibilityAction createAccessibilityAction(Context context) {
        return new AccessibilityNodeInfo.AccessibilityAction(R.id.action_remote_action_shortcut, this.mAction.getContentDescription());
    }

    @Override // com.android.launcher3.popup.SystemShortcut
    public final boolean isLeftGroup() {
        return true;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AbstractFloatingView.closeAllOpenViews((ActivityContext) this.mTarget);
        ((BaseDraggingActivity) this.mTarget).getStatsLogManager().logger().withItemInfo(this.mItemInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_SYSTEM_SHORTCUT_PAUSE_TAP);
        final WeakReference weakReference = new WeakReference((BaseDraggingActivity) this.mTarget);
        final String str = ((Object) this.mAction.getTitle()) + ", " + this.mItemInfo.getTargetComponent().getPackageName();
        ActivityOptions makeBasic = ActivityOptions.makeBasic();
        Utilities.allowBGLaunch(makeBasic);
        try {
            this.mAction.getActionIntent().send(this.mTarget, 0, new Intent().putExtra("android.intent.extra.PACKAGE_NAME", this.mItemInfo.getTargetComponent().getPackageName()), new PendingIntent.OnFinished() { // from class: com.android.launcher3.popup.s
                @Override // android.app.PendingIntent.OnFinished
                public final void onSendFinished(PendingIntent pendingIntent, Intent intent, int i4, String str2, Bundle bundle) {
                    String str3 = str;
                    BaseDraggingActivity baseDraggingActivity = (BaseDraggingActivity) weakReference.get();
                    if (str2 == null || str2.isEmpty()) {
                        return;
                    }
                    Log.e("RemoteActionShortcut", "Remote action returned result: " + str3 + " : " + str2);
                    if (baseDraggingActivity != null) {
                        Toast.makeText(baseDraggingActivity, str2, 0).show();
                    }
                }
            }, Executors.MAIN_EXECUTOR.getHandler(), null, makeBasic.toBundle());
        } catch (PendingIntent.CanceledException e4) {
            Log.e("RemoteActionShortcut", "Remote action canceled: " + str, e4);
            Context context = this.mTarget;
            Toast.makeText(context, ((BaseDraggingActivity) context).getString(R.string.remote_action_failed, new Object[]{this.mAction.getTitle()}), 0).show();
        }
    }

    @Override // com.android.launcher3.popup.SystemShortcut
    public final void setIconAndContentDescriptionFor(ImageView imageView) {
        this.mAction.getIcon().loadDrawableAsync(imageView.getContext(), new r(imageView, 0), Executors.MAIN_EXECUTOR.getHandler());
        imageView.setContentDescription(this.mAction.getContentDescription());
    }

    @Override // com.android.launcher3.popup.SystemShortcut
    public final void setIconAndLabelFor(View view, TextView textView) {
        this.mAction.getIcon().loadDrawableAsync(view.getContext(), new r(view, 1), Executors.MAIN_EXECUTOR.getHandler());
        textView.setText(this.mAction.getTitle());
    }
}
