package com.android.launcher3.pm;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.os.UserHandle;
import android.util.Log;
import android.widget.Toast;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.ComponentWithLabelAndIcon;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.PackageUserKey;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public abstract class ShortcutConfigActivityInfo implements ComponentWithLabelAndIcon {
    private final ComponentName mCn;
    private final UserHandle mUser;

    /* loaded from: classes.dex */
    public final class ShortcutConfigActivityInfoVO extends ShortcutConfigActivityInfo {
        private final LauncherActivityInfo mInfo;

        public ShortcutConfigActivityInfoVO(LauncherActivityInfo launcherActivityInfo) {
            super(launcherActivityInfo.getComponentName(), launcherActivityInfo.getUser());
            this.mInfo = launcherActivityInfo;
        }

        @Override // com.android.launcher3.icons.ComponentWithLabelAndIcon
        public final Drawable getFullResIcon(IconCache iconCache) {
            return iconCache.getFullResIcon(this.mInfo);
        }

        @Override // com.android.launcher3.icons.ComponentWithLabel
        public final CharSequence getLabel(PackageManager packageManager) {
            return this.mInfo.getLabel();
        }

        @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo
        public final boolean startConfigActivity(Activity activity) {
            if (getUser().equals(Process.myUserHandle())) {
                return super.startConfigActivity(activity);
            }
            IntentSender shortcutConfigActivityIntent = ((LauncherApps) activity.getSystemService(LauncherApps.class)).getShortcutConfigActivityIntent(this.mInfo);
            ActivityOptions makeBasic = ActivityOptions.makeBasic();
            Utilities.allowBGLaunch(makeBasic);
            try {
                activity.startIntentSenderForResult(shortcutConfigActivityIntent, 1, null, 0, 0, 0, makeBasic.toBundle());
                return true;
            } catch (IntentSender.SendIntentException unused) {
                Toast.makeText(activity, (int) R.string.activity_not_found, 0).show();
                return false;
            }
        }
    }

    public ShortcutConfigActivityInfo(ComponentName componentName, UserHandle userHandle) {
        this.mCn = componentName;
        this.mUser = userHandle;
    }

    public static List queryList(Context context, PackageUserKey packageUserKey) {
        String str;
        List<UserHandle> list;
        ArrayList arrayList = new ArrayList();
        if (packageUserKey == null) {
            list = ((UserCache) UserCache.INSTANCE.get(context)).getUserProfiles();
            str = null;
        } else {
            List singletonList = Collections.singletonList(packageUserKey.mUser);
            str = packageUserKey.mPackageName;
            list = singletonList;
        }
        LauncherApps launcherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
        for (UserHandle userHandle : list) {
            for (LauncherActivityInfo launcherActivityInfo : launcherApps.getShortcutConfigActivityList(str, userHandle)) {
                if (launcherActivityInfo.getApplicationInfo().targetSdkVersion >= 26) {
                    arrayList.add(new ShortcutConfigActivityInfoVO(launcherActivityInfo));
                }
            }
        }
        return arrayList;
    }

    public WorkspaceItemInfo createWorkspaceItemInfo() {
        return null;
    }

    @Override // com.android.launcher3.icons.ComponentWithLabel
    public final ComponentName getComponent() {
        return this.mCn;
    }

    public void getItemType() {
    }

    @Override // com.android.launcher3.icons.ComponentWithLabel
    public final UserHandle getUser() {
        return this.mUser;
    }

    public boolean startConfigActivity(Activity activity) {
        Intent component = new Intent("android.intent.action.CREATE_SHORTCUT").setComponent(this.mCn);
        try {
            activity.startActivityForResult(component, 1);
            return true;
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(activity, (int) R.string.activity_not_found, 0).show();
            return false;
        } catch (SecurityException e4) {
            Toast.makeText(activity, (int) R.string.activity_not_found, 0).show();
            Log.e("SCActivityInfo", "Launcher does not have the permission to launch " + component + ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity.", e4);
            return false;
        }
    }
}
