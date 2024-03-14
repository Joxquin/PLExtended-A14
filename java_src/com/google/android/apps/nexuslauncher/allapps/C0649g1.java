package com.google.android.apps.nexuslauncher.allapps;

import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.drawable.Icon;
import android.os.PersistableBundle;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Toast;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.PinShortcutRequestActivityInfo;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.logger.LauncherAtom$SearchActionItem;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.launcher3.proxy.ProxyActivityStarter;
import com.android.launcher3.touch.ItemClickHandler;
import com.android.launcher3.util.RunnableList;
import com.android.launcher3.util.StartActivityParams;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.InteractionJankMonitorWrapper;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import java.util.UUID;
import java.util.function.Supplier;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.g1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0649g1 extends PendingAddShortcutInfo implements ItemClickHandler.ItemClickProxy {

    /* renamed from: d  reason: collision with root package name */
    public String f7054d;

    /* renamed from: e  reason: collision with root package name */
    public int f7055e;

    /* renamed from: f  reason: collision with root package name */
    public Icon f7056f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f7057g;

    /* renamed from: h  reason: collision with root package name */
    public Intent f7058h;

    /* renamed from: i  reason: collision with root package name */
    public PendingIntent f7059i;

    public C0649g1(Icon icon, String str, UserHandle userHandle, CharSequence charSequence, boolean z4, boolean z5) {
        this.f7055e = 0;
        this.f7057g = z4;
        this.itemType = 9;
        this.animationType = z5 ? 1 : 0;
        this.user = userHandle == null ? Process.myUserHandle() : userHandle;
        this.title = charSequence;
        this.container = -200;
        this.f7054d = str;
        this.f7056f = icon;
    }

    public static C0649g1 t(Intent intent, String str) {
        C0649g1 c0649g1 = new C0649g1(null, intent.getPackage() != null ? intent.getPackage() : "", null, str, false, false);
        c0649g1.animationType = 2;
        return c0649g1;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final LauncherAtom$ItemInfo buildProto(FolderInfo folderInfo) {
        CharSequence charSequence;
        LauncherAtom$SearchActionItem.Builder newBuilder = LauncherAtom$SearchActionItem.newBuilder();
        newBuilder.setPackageName$1(this.f7054d);
        if (!this.f7057g && (charSequence = this.title) != null) {
            newBuilder.setTitle$1(charSequence.toString());
        }
        LauncherAtom$ItemInfo.Builder defaultItemInfoBuilder = getDefaultItemInfoBuilder();
        defaultItemInfoBuilder.setSearchActionItem(newBuilder);
        defaultItemInfoBuilder.setContainerInfo(getContainerInfo());
        return (LauncherAtom$ItemInfo) defaultItemInfoBuilder.build();
    }

    @Override // com.android.launcher3.PendingAddItemInfo, com.android.launcher3.model.data.ItemInfoWithIcon
    public final PendingAddItemInfo clone() {
        return new C0649g1(this);
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final void copyFrom(ItemInfo itemInfo) {
        super.copyFrom(itemInfo);
        C0649g1 c0649g1 = (C0649g1) itemInfo;
        this.f7054d = c0649g1.f7054d;
        this.f7056f = c0649g1.f7056f;
        this.f7055e = c0649g1.f7055e;
        this.f7057g = c0649g1.f7057g;
    }

    @Override // com.android.launcher3.widget.PendingAddShortcutInfo
    public final ShortcutConfigActivityInfo getActivityInfo(final Context context) {
        if (this.mActivityInfo == null) {
            if ((!u(64) || this.f7058h == null || this.title == null) ? false : true) {
                PersistableBundle persistableBundle = new PersistableBundle();
                persistableBundle.putString("extra_shortcut_badge_override_package", TextUtils.isEmpty(this.f7058h.getPackage()) ? this.f7054d : this.f7058h.getPackage());
                ShortcutInfo.Builder shortLabel = new ShortcutInfo.Builder(context, UUID.randomUUID().toString()).setIntent(this.f7058h).setShortLabel(this.title);
                Icon icon = this.f7056f;
                if (icon == null) {
                    icon = Icon.createWithResource(context, 17629184);
                }
                final ShortcutInfo build = shortLabel.setIcon(icon).setExtras(persistableBundle).build();
                this.mActivityInfo = new PinShortcutRequestActivityInfo(build, new Supplier() { // from class: com.google.android.apps.nexuslauncher.allapps.b1
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        Context context2 = context;
                        return ((LauncherApps) context2.getSystemService(LauncherApps.class)).getPinItemRequest(((ShortcutManager) context2.getSystemService(ShortcutManager.class)).createShortcutResultIntent(build));
                    }
                }, context);
            } else {
                ComponentName targetComponent = getTargetComponent();
                if (targetComponent == null && !TextUtils.isEmpty(this.f7054d)) {
                    targetComponent = new ComponentName(this.f7054d, ".");
                }
                if (targetComponent == null) {
                    targetComponent = new ComponentName(context.getPackageName(), ".");
                }
                this.mActivityInfo = new C0637d1(this, targetComponent, this.user, context);
            }
        }
        return super.getActivityInfo(context);
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final Intent getIntent() {
        return this.f7058h;
    }

    @Override // com.android.launcher3.touch.ItemClickHandler.ItemClickProxy
    public final void onItemClicked(View view) {
        RunnableList startActivitySafely;
        Context context = view.getContext();
        ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(context);
        boolean shouldUseBackgroundAnimation = shouldUseBackgroundAnimation();
        if (shouldUseBackgroundAnimation) {
            InteractionJankMonitorWrapper.begin(view, 71);
        }
        Intent intent = this.f7058h;
        RunnableList runnableList = null;
        if (intent != null) {
            String dataString = intent.getDataString();
            if (com.google.android.apps.nexuslauncher.c.f7322k.get() && FeatureFlags.ENABLE_SEARCH_UNINSTALLED_APPS.get() && !TextUtils.isEmpty(dataString) && dataString.startsWith("market://details") && dataString.endsWith("search_result_alleyoop")) {
                C0719y0 f4 = C0719y0.f(context);
                f4.f7270J = true;
                StartActivityParams startActivityParams = new StartActivityParams(new PendingIntent(new C0645f1(f4)), 0);
                startActivityParams.intent = intent;
                intent = ProxyActivityStarter.getLaunchIntent(context, startActivityParams);
            } else if (u(6)) {
                StartActivityParams startActivityParams2 = new StartActivityParams((PendingIntent) null, 0);
                startActivityParams2.intent = intent;
                intent = ProxyActivityStarter.getLaunchIntent(context, startActivityParams2);
            }
            runnableList = activityContext.startActivitySafely(view, intent, this);
        } else {
            PendingIntent pendingIntent = this.f7059i;
            if (pendingIntent != null) {
                try {
                    ActivityOptions makeBasic = ActivityOptions.makeBasic();
                    makeBasic.setPendingIntentBackgroundActivityStartMode(1);
                    if (!u(2)) {
                        startActivitySafely = activityContext.sendPendingIntentWithAnimation(view, pendingIntent, this);
                    } else if (u(6)) {
                        StartActivityParams startActivityParams3 = new StartActivityParams((PendingIntent) null, 0);
                        startActivityParams3.intentSender = pendingIntent.getIntentSender();
                        startActivityParams3.options = makeBasic.toBundle();
                        startActivitySafely = activityContext.startActivitySafely(view, ProxyActivityStarter.getLaunchIntent(context, startActivityParams3), this);
                    } else {
                        context.startIntentSender(pendingIntent.getIntentSender(), null, 0, 0, 0, makeBasic.toBundle());
                        activityContext.getStatsLogManager().logger().withItemInfo(this).log(NexusLauncherEvent.LAUNCHER_APP_LAUNCH_PENDING_INTENT_SHOULD_START);
                    }
                    runnableList = startActivitySafely;
                } catch (IntentSender.SendIntentException unused) {
                    Toast.makeText(context, context.getResources().getText(R.string.shortcut_not_available), 0).show();
                }
            }
        }
        if (shouldUseBackgroundAnimation) {
            if (runnableList != null) {
                runnableList.add(new RunnableC0633c1());
            } else {
                InteractionJankMonitorWrapper.end(71);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.title = charSequence;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final boolean shouldUseBackgroundAnimation() {
        if (super.shouldUseBackgroundAnimation()) {
            if (this.f7058h != null) {
                return true;
            }
            if (this.f7059i == null) {
                return false;
            }
            return !u(2) || u(6);
        }
        return false;
    }

    public final boolean u(int i4) {
        return (this.f7055e & i4) != 0;
    }

    public final void v(int i4) {
        this.f7055e = i4 | this.f7055e;
    }

    public final void w(Intent intent) {
        if (this.f7059i != null && intent != null) {
            throw new RuntimeException("SearchActionItemInfo can only have either an Intent or a PendingIntent");
        }
        this.f7058h = intent;
    }

    @Override // com.android.launcher3.PendingAddItemInfo, com.android.launcher3.model.data.ItemInfoWithIcon
    public final ItemInfoWithIcon clone() {
        return new C0649g1(this);
    }

    @Override // com.android.launcher3.PendingAddItemInfo, com.android.launcher3.model.data.ItemInfoWithIcon
    /* renamed from: clone */
    public final Object mo1clone() {
        return new C0649g1(this);
    }

    public C0649g1(C0649g1 c0649g1) {
        super(c0649g1);
        this.f7055e = 0;
    }
}
