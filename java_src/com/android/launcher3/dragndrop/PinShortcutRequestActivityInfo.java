package com.android.launcher3.dragndrop;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.os.Process;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherState;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.PinRequestHelper;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.util.StartActivityParams;
import com.android.systemui.shared.R;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final class PinShortcutRequestActivityInfo extends ShortcutConfigActivityInfo {
    private final Context mContext;
    private final ShortcutInfo mInfo;
    private final Supplier mRequestSupplier;

    public PinShortcutRequestActivityInfo(final LauncherApps.PinItemRequest pinItemRequest, Context context) {
        this(pinItemRequest.getShortcutInfo(), new Supplier() { // from class: J0.p
            @Override // java.util.function.Supplier
            public final Object get() {
                return pinItemRequest;
            }
        }, context);
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo
    public final WorkspaceItemInfo createWorkspaceItemInfo() {
        BaseState baseState = FeatureFlags.MULTI_SELECT_EDIT_MODE.get() ? LauncherState.EDIT_MODE : LauncherState.SPRING_LOADED;
        Context context = this.mContext;
        return PinRequestHelper.createWorkspaceItemFromPinItemRequest(context, (LauncherApps.PinItemRequest) this.mRequestSupplier.get(), context.getResources().getInteger(R.integer.config_dropAnimMaxDuration) + 500 + baseState.getTransitionDuration(Launcher.getLauncher(context), true));
    }

    @Override // com.android.launcher3.icons.ComponentWithLabelAndIcon
    public final Drawable getFullResIcon(IconCache iconCache) {
        Context context = this.mContext;
        Drawable shortcutIconDrawable = ((LauncherApps) context.getSystemService(LauncherApps.class)).getShortcutIconDrawable(this.mInfo, LauncherAppState.getIDP(context).fillResIconDpi);
        return shortcutIconDrawable == null ? iconCache.getDefaultIcon(Process.myUserHandle()).newIcon(0, context) : shortcutIconDrawable;
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo
    public final void getItemType() {
    }

    @Override // com.android.launcher3.icons.ComponentWithLabel
    public final CharSequence getLabel(PackageManager packageManager) {
        return this.mInfo.getShortLabel();
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo
    public final boolean startConfigActivity(Activity activity) {
        new StartActivityParams(activity, 1).deliverResult(activity, -1, new Intent().putExtra("android.content.pm.extra.PIN_ITEM_REQUEST", (Parcelable) this.mRequestSupplier.get()));
        return true;
    }

    public PinShortcutRequestActivityInfo(ShortcutInfo shortcutInfo, Supplier supplier, Context context) {
        super(new ComponentName(shortcutInfo.getPackage(), "pinned-shortcut"), shortcutInfo.getUserHandle());
        this.mRequestSupplier = supplier;
        this.mInfo = shortcutInfo;
        this.mContext = context;
    }
}
