package com.android.launcher3.views;

import android.app.WallpaperManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.ArrowPopup;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.widget.picker.WidgetsFullSheet;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class OptionsPopupView extends ArrowPopup implements View.OnClickListener, View.OnLongClickListener {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f5331d = 0;
    private final ArrayMap mItemMap;
    private boolean mShouldAddArrow;
    private RectF mTargetRect;

    public OptionsPopupView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static ArrayList getOptions(Launcher launcher) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new OptionItem(launcher, R.string.styles_wallpaper_button_text, R.drawable.ic_palette, StatsLogManager.LauncherEvent.IGNORE, new View.OnLongClickListener() { // from class: com.android.launcher3.views.t
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                switch (r1) {
                    case 0:
                        int i4 = OptionsPopupView.f5331d;
                        Launcher launcher2 = Launcher.getLauncher(view.getContext());
                        if (!((WallpaperManager) launcher2.getSystemService(WallpaperManager.class)).isSetWallpaperAllowed()) {
                            Toast.makeText(launcher2, launcher2.getStringCache() != null ? launcher2.getStringCache().disabledByAdminMessage : launcher2.getString(R.string.msg_disabled_by_admin), 0).show();
                            return false;
                        }
                        Intent putExtra = new Intent("android.intent.action.SET_WALLPAPER").addFlags(32768).putExtra("com.android.launcher3.WALLPAPER_OFFSET", launcher2.getWorkspace().getWallpaperOffsetForCenterPage()).putExtra("com.android.wallpaper.LAUNCH_SOURCE", "app_launched_launcher").putExtra("com.android.launcher3.WALLPAPER_FLAVOR", "focus_wallpaper");
                        String string = launcher2.getString(R.string.wallpaper_picker_package);
                        if (!TextUtils.isEmpty(string)) {
                            putExtra.setPackage(string);
                        }
                        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
                        workspaceItemInfo.intent = putExtra;
                        workspaceItemInfo.container = -108;
                        return launcher2.startActivitySafely(view, putExtra, workspaceItemInfo) != null;
                    case 1:
                        int i5 = OptionsPopupView.f5331d;
                        return OptionsPopupView.openWidgets(Launcher.getLauncher(view.getContext())) != null;
                    case 2:
                        int i6 = OptionsPopupView.f5331d;
                        Launcher.getLauncher(view.getContext()).getStateManager().goToState(LauncherState.EDIT_MODE);
                        return true;
                    default:
                        int i7 = OptionsPopupView.f5331d;
                        TestLogging.recordEvent("Main", "start: startSettings");
                        Launcher launcher3 = Launcher.getLauncher(view.getContext());
                        launcher3.startActivity(new Intent("android.intent.action.APPLICATION_PREFERENCES").setPackage(launcher3.getPackageName()).addFlags(268468224));
                        return true;
                }
            }
        }));
        arrayList.add(new OptionItem(launcher, R.string.widget_button_text, R.drawable.ic_widget, StatsLogManager.LauncherEvent.LAUNCHER_WIDGETSTRAY_BUTTON_TAP_OR_LONGPRESS, new View.OnLongClickListener() { // from class: com.android.launcher3.views.t
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                switch (r1) {
                    case 0:
                        int i4 = OptionsPopupView.f5331d;
                        Launcher launcher2 = Launcher.getLauncher(view.getContext());
                        if (!((WallpaperManager) launcher2.getSystemService(WallpaperManager.class)).isSetWallpaperAllowed()) {
                            Toast.makeText(launcher2, launcher2.getStringCache() != null ? launcher2.getStringCache().disabledByAdminMessage : launcher2.getString(R.string.msg_disabled_by_admin), 0).show();
                            return false;
                        }
                        Intent putExtra = new Intent("android.intent.action.SET_WALLPAPER").addFlags(32768).putExtra("com.android.launcher3.WALLPAPER_OFFSET", launcher2.getWorkspace().getWallpaperOffsetForCenterPage()).putExtra("com.android.wallpaper.LAUNCH_SOURCE", "app_launched_launcher").putExtra("com.android.launcher3.WALLPAPER_FLAVOR", "focus_wallpaper");
                        String string = launcher2.getString(R.string.wallpaper_picker_package);
                        if (!TextUtils.isEmpty(string)) {
                            putExtra.setPackage(string);
                        }
                        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
                        workspaceItemInfo.intent = putExtra;
                        workspaceItemInfo.container = -108;
                        return launcher2.startActivitySafely(view, putExtra, workspaceItemInfo) != null;
                    case 1:
                        int i5 = OptionsPopupView.f5331d;
                        return OptionsPopupView.openWidgets(Launcher.getLauncher(view.getContext())) != null;
                    case 2:
                        int i6 = OptionsPopupView.f5331d;
                        Launcher.getLauncher(view.getContext()).getStateManager().goToState(LauncherState.EDIT_MODE);
                        return true;
                    default:
                        int i7 = OptionsPopupView.f5331d;
                        TestLogging.recordEvent("Main", "start: startSettings");
                        Launcher launcher3 = Launcher.getLauncher(view.getContext());
                        launcher3.startActivity(new Intent("android.intent.action.APPLICATION_PREFERENCES").setPackage(launcher3.getPackageName()).addFlags(268468224));
                        return true;
                }
            }
        }));
        boolean z4 = FeatureFlags.MULTI_SELECT_EDIT_MODE.get();
        StatsLogManager.LauncherEvent launcherEvent = StatsLogManager.LauncherEvent.LAUNCHER_SETTINGS_BUTTON_TAP_OR_LONGPRESS;
        if (z4) {
            arrayList.add(new OptionItem(launcher, R.string.edit_home_screen, R.drawable.enter_home_gardening_icon, launcherEvent, new View.OnLongClickListener() { // from class: com.android.launcher3.views.t
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    switch (r1) {
                        case 0:
                            int i4 = OptionsPopupView.f5331d;
                            Launcher launcher2 = Launcher.getLauncher(view.getContext());
                            if (!((WallpaperManager) launcher2.getSystemService(WallpaperManager.class)).isSetWallpaperAllowed()) {
                                Toast.makeText(launcher2, launcher2.getStringCache() != null ? launcher2.getStringCache().disabledByAdminMessage : launcher2.getString(R.string.msg_disabled_by_admin), 0).show();
                                return false;
                            }
                            Intent putExtra = new Intent("android.intent.action.SET_WALLPAPER").addFlags(32768).putExtra("com.android.launcher3.WALLPAPER_OFFSET", launcher2.getWorkspace().getWallpaperOffsetForCenterPage()).putExtra("com.android.wallpaper.LAUNCH_SOURCE", "app_launched_launcher").putExtra("com.android.launcher3.WALLPAPER_FLAVOR", "focus_wallpaper");
                            String string = launcher2.getString(R.string.wallpaper_picker_package);
                            if (!TextUtils.isEmpty(string)) {
                                putExtra.setPackage(string);
                            }
                            WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
                            workspaceItemInfo.intent = putExtra;
                            workspaceItemInfo.container = -108;
                            return launcher2.startActivitySafely(view, putExtra, workspaceItemInfo) != null;
                        case 1:
                            int i5 = OptionsPopupView.f5331d;
                            return OptionsPopupView.openWidgets(Launcher.getLauncher(view.getContext())) != null;
                        case 2:
                            int i6 = OptionsPopupView.f5331d;
                            Launcher.getLauncher(view.getContext()).getStateManager().goToState(LauncherState.EDIT_MODE);
                            return true;
                        default:
                            int i7 = OptionsPopupView.f5331d;
                            TestLogging.recordEvent("Main", "start: startSettings");
                            Launcher launcher3 = Launcher.getLauncher(view.getContext());
                            launcher3.startActivity(new Intent("android.intent.action.APPLICATION_PREFERENCES").setPackage(launcher3.getPackageName()).addFlags(268468224));
                            return true;
                    }
                }
            }));
        }
        arrayList.add(new OptionItem(launcher, R.string.settings_button_text, R.drawable.ic_setting, launcherEvent, new View.OnLongClickListener() { // from class: com.android.launcher3.views.t
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                switch (r1) {
                    case 0:
                        int i4 = OptionsPopupView.f5331d;
                        Launcher launcher2 = Launcher.getLauncher(view.getContext());
                        if (!((WallpaperManager) launcher2.getSystemService(WallpaperManager.class)).isSetWallpaperAllowed()) {
                            Toast.makeText(launcher2, launcher2.getStringCache() != null ? launcher2.getStringCache().disabledByAdminMessage : launcher2.getString(R.string.msg_disabled_by_admin), 0).show();
                            return false;
                        }
                        Intent putExtra = new Intent("android.intent.action.SET_WALLPAPER").addFlags(32768).putExtra("com.android.launcher3.WALLPAPER_OFFSET", launcher2.getWorkspace().getWallpaperOffsetForCenterPage()).putExtra("com.android.wallpaper.LAUNCH_SOURCE", "app_launched_launcher").putExtra("com.android.launcher3.WALLPAPER_FLAVOR", "focus_wallpaper");
                        String string = launcher2.getString(R.string.wallpaper_picker_package);
                        if (!TextUtils.isEmpty(string)) {
                            putExtra.setPackage(string);
                        }
                        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
                        workspaceItemInfo.intent = putExtra;
                        workspaceItemInfo.container = -108;
                        return launcher2.startActivitySafely(view, putExtra, workspaceItemInfo) != null;
                    case 1:
                        int i5 = OptionsPopupView.f5331d;
                        return OptionsPopupView.openWidgets(Launcher.getLauncher(view.getContext())) != null;
                    case 2:
                        int i6 = OptionsPopupView.f5331d;
                        Launcher.getLauncher(view.getContext()).getStateManager().goToState(LauncherState.EDIT_MODE);
                        return true;
                    default:
                        int i7 = OptionsPopupView.f5331d;
                        TestLogging.recordEvent("Main", "start: startSettings");
                        Launcher launcher3 = Launcher.getLauncher(view.getContext());
                        launcher3.startActivity(new Intent("android.intent.action.APPLICATION_PREFERENCES").setPackage(launcher3.getPackageName()).addFlags(268468224));
                        return true;
                }
            }
        }));
        return arrayList;
    }

    private boolean handleViewClick(View view) {
        OptionItem optionItem = (OptionItem) this.mItemMap.get(view);
        if (optionItem == null) {
            return false;
        }
        StatsLogManager.EventEnum eventEnum = optionItem.eventId;
        if (eventEnum.getId() > 0) {
            ((ActivityContext) this.mActivityContext).getStatsLogManager().logger().log(eventEnum);
        }
        if (optionItem.clickListener.onLongClick(view)) {
            close(true);
            return true;
        }
        return false;
    }

    public static WidgetsFullSheet openWidgets(Launcher launcher) {
        if (launcher.getPackageManager().isSafeMode()) {
            Toast.makeText(launcher, (int) R.string.safemode_widget_error, 0).show();
            return null;
        }
        AbstractFloatingView topOpenViewWithType = AbstractFloatingView.getTopOpenViewWithType(launcher, 16);
        return topOpenViewWithType != null ? (WidgetsFullSheet) topOpenViewWithType : WidgetsFullSheet.show(launcher, true);
    }

    public static OptionsPopupView show(ActivityContext activityContext, RectF rectF, List list, boolean z4) {
        OptionsPopupView optionsPopupView = (OptionsPopupView) activityContext.getLayoutInflater().inflate(R.layout.longpress_options_menu, (ViewGroup) activityContext.getDragLayer(), false);
        optionsPopupView.mTargetRect = rectF;
        optionsPopupView.mShouldAddArrow = z4;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            OptionItem optionItem = (OptionItem) it.next();
            DeepShortcutView deepShortcutView = (DeepShortcutView) optionsPopupView.inflateAndAdd(R.layout.system_shortcut, optionsPopupView);
            deepShortcutView.getIconView().setBackgroundDrawable(optionItem.icon);
            deepShortcutView.getBubbleText().setText(optionItem.label);
            deepShortcutView.setOnClickListener(optionsPopupView);
            deepShortcutView.setOnLongClickListener(optionsPopupView);
            optionsPopupView.mItemMap.put(deepShortcutView, optionItem);
        }
        optionsPopupView.show();
        return optionsPopupView;
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public final void assignMarginsAndBackgrounds(ViewGroup viewGroup) {
        if (!FeatureFlags.ENABLE_MATERIAL_U_POPUP.get()) {
            assignMarginsAndBackgrounds(viewGroup, 0);
            return;
        }
        assignMarginsAndBackgrounds(viewGroup, B.c.a(this.mColorIds[0], getContext()).getDefaultColor());
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public final void getTargetObjectLocation(Rect rect) {
        this.mTargetRect.roundOut(rect);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (i4 & 4096) != 0;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        handleViewClick(view);
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && !getPopupContainer().isEventOverView(this, motionEvent)) {
            close(true);
            return true;
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        return handleViewClick(view);
    }

    public final void setTargetRect(RectF rectF) {
        this.mTargetRect = rectF;
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public final boolean shouldAddArrow() {
        return this.mShouldAddArrow;
    }

    public OptionsPopupView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mItemMap = new ArrayMap();
    }

    /* loaded from: classes.dex */
    public final class OptionItem {
        public final View.OnLongClickListener clickListener;
        public final StatsLogManager.EventEnum eventId;
        public final Drawable icon;
        public final CharSequence label;
        public final int labelRes;

        public OptionItem(Context context, int i4, int i5, StatsLogManager.EventEnum eventEnum, View.OnLongClickListener onLongClickListener) {
            this.labelRes = i4;
            this.label = context.getText(i4);
            Object obj = B.c.f105a;
            this.icon = context.getDrawable(i5);
            this.eventId = eventEnum;
            this.clickListener = onLongClickListener;
        }

        public OptionItem(CharSequence charSequence, Drawable drawable, StatsLogManager.EventEnum eventEnum, View.OnLongClickListener onLongClickListener) {
            this.labelRes = 0;
            this.label = charSequence;
            this.icon = drawable;
            this.eventId = eventEnum;
            this.clickListener = onLongClickListener;
        }
    }
}
