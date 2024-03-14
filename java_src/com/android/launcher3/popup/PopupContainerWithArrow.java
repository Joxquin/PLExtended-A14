package com.android.launcher3.popup;

import android.animation.AnimatorSet;
import android.animation.LayoutTransition;
import android.animation.ObjectAnimator;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.accessibility.ShortcutMenuAccessibilityDelegate;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.notification.NotificationContainer;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.shortcuts.ShortcutDragPreviewProvider;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.ShortcutUtil;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public class PopupContainerWithArrow extends ArrowPopup implements DragSource, DragController.DragListener {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f4922d = 0;
    protected ShortcutMenuAccessibilityDelegate mAccessibilityDelegate;
    private int mContainerWidth;
    private ViewGroup mDeepShortcutContainer;
    private final List mDeepShortcuts;
    private final PointF mInterceptTouchDown;
    private NotificationContainer mNotificationContainer;
    private int mNumNotifications;
    private BubbleTextView mOriginalIcon;
    protected PopupItemDragHandler mPopupItemDragHandler;
    private final float mShortcutHeight;
    private final int mStartDragThreshold;
    private ViewGroup mSystemShortcutContainer;
    private ViewGroup mWidgetContainer;

    /* loaded from: classes.dex */
    public final class LauncherPopupItemDragHandler implements PopupItemDragHandler {
        private final PopupContainerWithArrow mContainer;
        protected final Point mIconLastTouchPos = new Point();
        private final Launcher mLauncher;

        public LauncherPopupItemDragHandler(Launcher launcher, PopupContainerWithArrow popupContainerWithArrow) {
            this.mLauncher = launcher;
            this.mContainer = popupContainerWithArrow;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            if (ItemLongClickListener.canStartDrag(this.mLauncher) && (view.getParent() instanceof DeepShortcutView)) {
                DeepShortcutView deepShortcutView = (DeepShortcutView) view.getParent();
                deepShortcutView.setWillDrawIcon();
                Point point = new Point();
                point.x = this.mIconLastTouchPos.x - deepShortcutView.getIconCenter().x;
                point.y = this.mIconLastTouchPos.y - this.mLauncher.getDeviceProfile().iconSizePx;
                J0.i iVar = new J0.i(0);
                WorkspaceItemInfo finalInfo = deepShortcutView.getFinalInfo();
                finalInfo.container = -107;
                this.mLauncher.getWorkspace().beginDragShared(deepShortcutView.getIconView(), iVar, this.mContainer, finalInfo, new ShortcutDragPreviewProvider(deepShortcutView.getIconView(), point), new DragOptions()).animateShift(-point.x, -point.y);
                AbstractFloatingView.closeOpenContainer(this.mLauncher, 1);
                return false;
            }
            return false;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0 || action == 2) {
                this.mIconLastTouchPos.set((int) motionEvent.getX(), (int) motionEvent.getY());
                return false;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public interface PopupItemDragHandler extends View.OnLongClickListener, View.OnTouchListener {
    }

    public PopupContainerWithArrow(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mDeepShortcuts = new ArrayList();
        this.mInterceptTouchDown = new PointF();
        this.mStartDragThreshold = getResources().getDimensionPixelSize(R.dimen.deep_shortcuts_start_drag_threshold);
        this.mContainerWidth = getResources().getDimensionPixelSize(R.dimen.bg_popup_item_width);
        this.mShortcutHeight = getResources().getDimension(R.dimen.system_shortcut_header_height);
    }

    private void addDeepShortcutsMaterialU(float f4, int i4) {
        this.mDeepShortcutContainer = (ViewGroup) inflateAndAdd(R.layout.deep_shortcut_container, this);
        while (i4 > 0) {
            f4 += this.mShortcutHeight;
            if (f4 >= ((ActivityContext) this.mActivityContext).getDeviceProfile().availableHeightPx) {
                break;
            }
            DeepShortcutView deepShortcutView = (DeepShortcutView) inflateAndAdd(R.layout.deep_shortcut_material_u, this.mDeepShortcutContainer);
            deepShortcutView.getLayoutParams().width = this.mContainerWidth;
            ((ArrayList) this.mDeepShortcuts).add(deepShortcutView);
            i4--;
        }
        updateHiddenShortcuts();
    }

    private void addSystemShortcutsIconsOnly(List list) {
        int i4;
        if (list.size() == 0) {
            return;
        }
        this.mSystemShortcutContainer = FeatureFlags.ENABLE_MATERIAL_U_POPUP.get() ? (ViewGroup) inflateAndAdd(R.layout.system_shortcut_icons_container_material_u, this) : (ViewGroup) inflateAndAdd(R.layout.system_shortcut_icons_container, this, 0);
        for (int i5 = 0; i5 < list.size(); i5++) {
            boolean z4 = true;
            if (i5 == 0) {
                i4 = R.layout.system_shortcut_icon_only_start;
            } else if (i5 == list.size() - 1) {
                i4 = R.layout.system_shortcut_icon_only_end;
                z4 = false;
            } else {
                i4 = R.layout.system_shortcut_icon_only;
            }
            initializeSystemShortcut(i4, this.mSystemShortcutContainer, (SystemShortcut) list.get(i5), z4);
        }
    }

    private void addSystemShortcutsMaterialU(List list) {
        if (list.size() == 0) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) inflateAndAdd(R.layout.system_shortcut_rows_container_material_u, this);
        this.mSystemShortcutContainer = viewGroup;
        this.mWidgetContainer = viewGroup;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ViewGroup viewGroup2 = this.mSystemShortcutContainer;
            SystemShortcut systemShortcut = (SystemShortcut) list.get(i4);
            boolean z4 = true;
            if (i4 >= list.size() - 1) {
                z4 = false;
            }
            initializeSystemShortcut(R.layout.system_shortcut, viewGroup2, systemShortcut, z4);
        }
    }

    private void configureForLauncher(Launcher launcher) {
        addOnAttachStateChangeListener(new LauncherPopupLiveUpdateHandler(launcher, this));
        this.mPopupItemDragHandler = new LauncherPopupItemDragHandler(launcher, this);
        this.mAccessibilityDelegate = new ShortcutMenuAccessibilityDelegate(launcher);
        launcher.getDragController().addDragListener(this);
    }

    public static void dismissInvalidPopup(BaseDraggingActivity baseDraggingActivity) {
        PopupContainerWithArrow open = getOpen(baseDraggingActivity);
        if (open != null) {
            if (open.mOriginalIcon.isAttachedToWindow() && ShortcutUtil.supportsShortcuts((ItemInfo) open.mOriginalIcon.getTag())) {
                return;
            }
            open.animateClose();
        }
    }

    public static PopupContainerWithArrow getOpen(Context context) {
        return (PopupContainerWithArrow) AbstractFloatingView.getOpenView((ActivityContext) context, 2);
    }

    private static Optional getWidgetShortcut(List list) {
        return list.stream().filter(new d(2)).map(new Function() { // from class: com.android.launcher3.popup.e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (SystemShortcut.Widgets) r1.cast((SystemShortcut) obj);
            }
        }).findFirst();
    }

    private void loadAppShortcuts(final ItemInfo itemInfo, final List list) {
        if (Utilities.ATLEAST_P) {
            setAccessibilityPaneTitle(getContext().getString(this.mNumNotifications == 0 ? R.string.action_deep_shortcut : R.string.shortcuts_menu_with_notifications_description));
        }
        this.mOriginalIcon.setForceHideDot(true);
        setLayoutTransition(new LayoutTransition());
        Handler handler = Executors.MODEL_EXECUTOR.getHandler();
        final Context context = this.mActivityContext;
        final Handler handler2 = new Handler(Looper.getMainLooper());
        final List list2 = this.mDeepShortcuts;
        int i4 = PopupPopulator.NUM_DYNAMIC;
        final ComponentName targetComponent = itemInfo.getTargetComponent();
        final UserHandle userHandle = itemInfo.user;
        handler.postAtFrontOfQueue(new Runnable() { // from class: com.android.launcher3.popup.m
            @Override // java.lang.Runnable
            public final void run() {
                PopupPopulator.a(list, context, itemInfo, handler2, this, userHandle, targetComponent, list2);
            }
        });
    }

    public static PopupContainerWithArrow showForIcon(final BubbleTextView bubbleTextView) {
        PopupContainerWithArrow popupContainerWithArrow;
        final Launcher launcher = Launcher.getLauncher(bubbleTextView.getContext());
        if (getOpen(launcher) != null) {
            bubbleTextView.clearFocus();
            return null;
        }
        final ItemInfo itemInfo = (ItemInfo) bubbleTextView.getTag();
        if (ShortcutUtil.supportsShortcuts(itemInfo)) {
            PopupDataProvider popupDataProvider = launcher.getPopupDataProvider();
            int shortcutCountForItem = popupDataProvider.getShortcutCountForItem(itemInfo);
            List list = (List) launcher.getSupportedShortcuts().map(new Function() { // from class: com.android.launcher3.popup.c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Launcher launcher2 = Launcher.this;
                    ItemInfo itemInfo2 = itemInfo;
                    BubbleTextView bubbleTextView2 = bubbleTextView;
                    int i4 = PopupContainerWithArrow.f4922d;
                    return ((SystemShortcut.Factory) obj).getShortcut(launcher2, itemInfo2, bubbleTextView2);
                }
            }).filter(new d(0)).collect(Collectors.toList());
            if (FeatureFlags.ENABLE_MATERIAL_U_POPUP.get()) {
                popupContainerWithArrow = (PopupContainerWithArrow) launcher.getLayoutInflater().inflate(R.layout.popup_container_material_u, (ViewGroup) launcher.getDragLayer(), false);
                popupContainerWithArrow.configureForLauncher(launcher);
                popupContainerWithArrow.populateAndShowRowsMaterialU(bubbleTextView, shortcutCountForItem, list);
            } else {
                PopupContainerWithArrow popupContainerWithArrow2 = (PopupContainerWithArrow) launcher.getLayoutInflater().inflate(R.layout.popup_container, (ViewGroup) launcher.getDragLayer(), false);
                popupContainerWithArrow2.configureForLauncher(launcher);
                DotInfo dotInfoForItem = popupDataProvider.getDotInfoForItem(itemInfo);
                popupContainerWithArrow2.populateAndShow(bubbleTextView, shortcutCountForItem, dotInfoForItem == null ? Collections.EMPTY_LIST : PopupDataProvider.getNotificationsForItem(itemInfo, dotInfoForItem.getNotificationKeys()), list);
                popupContainerWithArrow = popupContainerWithArrow2;
            }
            launcher.refreshAndBindWidgetsForPackageUser(PackageUserKey.fromItemInfo(itemInfo));
            popupContainerWithArrow.requestFocus();
            return popupContainerWithArrow;
        }
        return null;
    }

    public final void applyNotificationInfos(List list) {
        NotificationContainer notificationContainer = this.mNotificationContainer;
        if (notificationContainer != null) {
            notificationContainer.applyNotificationInfos(list);
        }
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public final void closeComplete() {
        super.closeComplete();
        if (((ActivityContext) this.mActivityContext).getDragController() != null) {
            ((ActivityContext) this.mActivityContext).getDragController().removeDragListener(this);
        }
        PopupContainerWithArrow open = getOpen(this.mActivityContext);
        if (open == null || open.mOriginalIcon != this.mOriginalIcon) {
            BubbleTextView bubbleTextView = this.mOriginalIcon;
            bubbleTextView.setTextVisibility(bubbleTextView.shouldTextBeVisible());
            this.mOriginalIcon.setForceHideDot(false);
        }
    }

    public final DragOptions.PreDragCondition createPreDragCondition(final boolean z4) {
        return new DragOptions.PreDragCondition() { // from class: com.android.launcher3.popup.PopupContainerWithArrow.1
            @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
            public final void onPreDragEnd(DropTarget.DragObject dragObject, boolean z5) {
                if (z4) {
                    PopupContainerWithArrow popupContainerWithArrow = PopupContainerWithArrow.this;
                    popupContainerWithArrow.mOriginalIcon.setIconVisible(true);
                    if (z5) {
                        popupContainerWithArrow.mOriginalIcon.setVisibility(4);
                    } else if (popupContainerWithArrow.mIsAboveIcon) {
                    } else {
                        popupContainerWithArrow.mOriginalIcon.setVisibility(0);
                        popupContainerWithArrow.mOriginalIcon.setTextVisibility(false);
                    }
                }
            }

            @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
            public final void onPreDragStart(DropTarget.DragObject dragObject) {
                if (z4) {
                    PopupContainerWithArrow popupContainerWithArrow = PopupContainerWithArrow.this;
                    if (!popupContainerWithArrow.mIsAboveIcon) {
                        popupContainerWithArrow.mOriginalIcon.setVisibility(4);
                        return;
                    }
                    popupContainerWithArrow.mOriginalIcon.setIconVisible(false);
                    popupContainerWithArrow.mOriginalIcon.setVisibility(0);
                }
            }

            @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
            public final boolean shouldStartDrag(double d4) {
                return d4 > ((double) PopupContainerWithArrow.this.mStartDragThreshold);
            }
        };
    }

    @Override // android.view.View
    public final View.AccessibilityDelegate getAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    @Override // com.android.launcher3.popup.ArrowPopup, com.android.launcher3.AbstractFloatingView
    public final View getAccessibilityInitialFocusView() {
        ViewGroup viewGroup = this.mSystemShortcutContainer;
        return viewGroup != null ? viewGroup.getChildAt(0) : super.getAccessibilityInitialFocusView();
    }

    public final PopupItemDragHandler getItemDragHandler() {
        return this.mPopupItemDragHandler;
    }

    public final NotificationContainer getNotificationContainer() {
        return this.mNotificationContainer;
    }

    public final BubbleTextView getOriginalIcon() {
        return this.mOriginalIcon;
    }

    public final ViewGroup getSystemShortcutContainer() {
        return this.mSystemShortcutContainer;
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public final void getTargetObjectLocation(Rect rect) {
        getPopupContainer().getDescendantRectRelativeToSelf(this.mOriginalIcon, rect);
        rect.top = this.mOriginalIcon.getPaddingTop() + rect.top;
        rect.left = this.mOriginalIcon.getPaddingLeft() + rect.left;
        rect.right -= this.mOriginalIcon.getPaddingRight();
        rect.bottom = rect.top + (this.mOriginalIcon.getIcon() != null ? this.mOriginalIcon.getIcon().getBounds().height() : this.mOriginalIcon.getHeight());
    }

    public final ViewGroup getWidgetContainer() {
        return this.mWidgetContainer;
    }

    public final View initializeSystemShortcut(int i4, ViewGroup viewGroup, SystemShortcut systemShortcut, boolean z4) {
        View inflateAndAdd = inflateAndAdd(i4, viewGroup);
        if (inflateAndAdd instanceof DeepShortcutView) {
            DeepShortcutView deepShortcutView = (DeepShortcutView) inflateAndAdd;
            systemShortcut.setIconAndLabelFor(deepShortcutView.getIconView(), deepShortcutView.getBubbleText());
        } else if (inflateAndAdd instanceof ImageView) {
            systemShortcut.setIconAndContentDescriptionFor((ImageView) inflateAndAdd);
            if (z4) {
                inflateAndAdd(R.layout.system_shortcut_spacer, viewGroup);
            }
            inflateAndAdd.setTooltipText(inflateAndAdd.getContentDescription());
        }
        inflateAndAdd.setTag(systemShortcut);
        inflateAndAdd.setOnClickListener(systemShortcut);
        return inflateAndAdd;
    }

    public final void initializeWidgetShortcut(ViewGroup viewGroup, SystemShortcut systemShortcut) {
        initializeSystemShortcut(R.layout.system_shortcut, viewGroup, systemShortcut, false).getLayoutParams().width = this.mContainerWidth;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (i4 & 2) != 0;
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            BaseDragLayer popupContainer = getPopupContainer();
            if (!popupContainer.isEventOverView(this, motionEvent)) {
                close(true);
                BubbleTextView bubbleTextView = this.mOriginalIcon;
                if (bubbleTextView == null || !popupContainer.isEventOverView(bubbleTextView, motionEvent)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public final void onCreateCloseAnimation(AnimatorSet animatorSet) {
        BubbleTextView bubbleTextView = this.mOriginalIcon;
        animatorSet.play(ObjectAnimator.ofFloat(bubbleTextView, BubbleTextView.TEXT_ALPHA_PROPERTY, bubbleTextView.shouldTextBeVisible() ? 1.0f : 0.0f));
        this.mOriginalIcon.setForceHideDot(false);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragEnd() {
        if (this.mIsOpen) {
            return;
        }
        if (this.mOpenCloseAnimator != null) {
            this.mDeferContainerRemoval = false;
        } else if (this.mDeferContainerRemoval) {
            closeComplete();
        }
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        this.mDeferContainerRemoval = true;
        animateClose();
    }

    @Override // com.android.launcher3.DragSource
    public final void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z4) {
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mInterceptTouchDown.set(motionEvent.getX(), motionEvent.getY());
        }
        NotificationContainer notificationContainer = this.mNotificationContainer;
        if (notificationContainer == null || !notificationContainer.onInterceptSwipeEvent(motionEvent)) {
            float x4 = this.mInterceptTouchDown.x - motionEvent.getX();
            float y4 = this.mInterceptTouchDown.y - motionEvent.getY();
            String[] strArr = Utilities.EMPTY_STRING_ARRAY;
            return (y4 * y4) + (x4 * x4) > Utilities.squaredTouchSlop(getContext());
        }
        return true;
    }

    @Override // com.android.launcher3.AbstractFloatingView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        NotificationContainer notificationContainer = this.mNotificationContainer;
        return notificationContainer != null ? notificationContainer.onSwipeEvent(motionEvent) || super.onTouchEvent(motionEvent) : super.onTouchEvent(motionEvent);
    }

    public final void populateAndShow(BubbleTextView bubbleTextView, int i4, List list, List list2) {
        this.mNumNotifications = list.size();
        this.mOriginalIcon = bubbleTextView;
        boolean z4 = i4 > 0;
        this.mContainerWidth = getResources().getDimensionPixelSize(R.dimen.bg_popup_item_width);
        if (this.mNumNotifications > 0) {
            NotificationContainer notificationContainer = this.mNotificationContainer;
            if (notificationContainer == null) {
                NotificationContainer notificationContainer2 = (NotificationContainer) findViewById(R.id.notification_container);
                this.mNotificationContainer = notificationContainer2;
                notificationContainer2.setVisibility(0);
                this.mNotificationContainer.setPopupView(this);
            } else {
                notificationContainer.setVisibility(8);
            }
            updateNotificationHeader();
        }
        this.mSystemShortcutContainer = this;
        if (this.mDeepShortcutContainer == null) {
            this.mDeepShortcutContainer = (ViewGroup) findViewById(R.id.deep_shortcuts_container);
        }
        if (z4) {
            List list3 = (List) list2.stream().filter(new d(1)).collect(Collectors.toList());
            this.mContainerWidth = Math.max(this.mContainerWidth, getResources().getDimensionPixelSize(R.dimen.system_shortcut_header_icon_touch_size) * list3.size());
            this.mDeepShortcutContainer.setVisibility(0);
            while (i4 > 0) {
                DeepShortcutView deepShortcutView = (DeepShortcutView) inflateAndAdd(R.layout.deep_shortcut, this.mDeepShortcutContainer);
                deepShortcutView.getLayoutParams().width = this.mContainerWidth;
                ((ArrayList) this.mDeepShortcuts).add(deepShortcutView);
                i4--;
            }
            updateHiddenShortcuts();
            Optional widgetShortcut = getWidgetShortcut(list2);
            if (widgetShortcut.isPresent()) {
                if (this.mWidgetContainer == null) {
                    this.mWidgetContainer = (ViewGroup) inflateAndAdd(R.layout.widget_shortcut_container, this, 0);
                }
                initializeWidgetShortcut(this.mWidgetContainer, (SystemShortcut) widgetShortcut.get());
            }
            if (!list3.isEmpty()) {
                if (list3.size() == 1) {
                    ViewGroup viewGroup = (ViewGroup) inflateAndAdd(R.layout.system_shortcut_rows_container, this, 0);
                    this.mSystemShortcutContainer = viewGroup;
                    initializeSystemShortcut(R.layout.system_shortcut, viewGroup, (SystemShortcut) list3.get(0), false);
                } else {
                    addSystemShortcutsIconsOnly(list3);
                }
            }
        } else {
            this.mDeepShortcutContainer.setVisibility(8);
            ViewGroup viewGroup2 = (ViewGroup) inflateAndAdd(R.layout.system_shortcut_rows_container, this, 0);
            this.mSystemShortcutContainer = viewGroup2;
            this.mWidgetContainer = viewGroup2;
            if (!list2.isEmpty()) {
                int i5 = 0;
                while (i5 < list2.size()) {
                    initializeSystemShortcut(R.layout.system_shortcut, this.mSystemShortcutContainer, (SystemShortcut) list2.get(i5), i5 < list2.size() - 1);
                    i5++;
                }
            }
        }
        show();
        loadAppShortcuts((ItemInfo) bubbleTextView.getTag(), list);
    }

    public final void populateAndShowRowsMaterialU(BubbleTextView bubbleTextView, int i4, List list) {
        this.mOriginalIcon = bubbleTextView;
        this.mContainerWidth = getResources().getDimensionPixelSize(R.dimen.bg_popup_item_width);
        if (i4 > 0) {
            if (list.size() + i4 <= 6) {
                addSystemShortcutsMaterialU(list);
                addDeepShortcutsMaterialU((this.mShortcutHeight * list.size()) + this.mChildContainerMargin, i4);
            } else {
                float f4 = this.mShortcutHeight + this.mChildContainerMargin;
                List list2 = (List) list.stream().filter(new d(1)).collect(Collectors.toList());
                addSystemShortcutsIconsOnly(list2);
                this.mContainerWidth = Math.max(this.mContainerWidth, getResources().getDimensionPixelSize(R.dimen.system_shortcut_header_icon_touch_size) * list2.size());
                Optional widgetShortcut = getWidgetShortcut(list);
                if (widgetShortcut.isPresent()) {
                    ViewGroup viewGroup = (ViewGroup) inflateAndAdd(R.layout.widget_shortcut_container_material_u, this);
                    this.mWidgetContainer = viewGroup;
                    initializeWidgetShortcut(viewGroup, (SystemShortcut) widgetShortcut.get());
                    f4 += this.mShortcutHeight + this.mChildContainerMargin;
                }
                addDeepShortcutsMaterialU(f4, i4);
            }
        } else if (!list.isEmpty()) {
            addSystemShortcutsMaterialU(list);
        }
        show();
        loadAppShortcuts((ItemInfo) bubbleTextView.getTag(), Collections.emptyList());
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public final void setChildColor(View view, int i4, AnimatorSet animatorSet) {
        NotificationContainer notificationContainer;
        super.setChildColor(view, i4, animatorSet);
        if (view.getId() != R.id.notification_container || (notificationContainer = this.mNotificationContainer) == null) {
            return;
        }
        notificationContainer.updateBackgroundColor(i4, animatorSet);
    }

    public final void setPopupItemDragHandler(PopupItemDragHandler popupItemDragHandler) {
        this.mPopupItemDragHandler = popupItemDragHandler;
    }

    public final void setWidgetContainer(ViewGroup viewGroup) {
        this.mWidgetContainer = viewGroup;
    }

    public final void updateHiddenShortcuts() {
        int i4 = this.mNotificationContainer != null ? 2 : 4;
        int size = ((ArrayList) this.mDeepShortcuts).size();
        int i5 = 0;
        while (i5 < size) {
            ((DeepShortcutView) ((ArrayList) this.mDeepShortcuts).get(i5)).setVisibility(i5 >= i4 ? 8 : 0);
            i5++;
        }
    }

    public final void updateNotificationHeader() {
        DotInfo dotInfoForItem = ((ActivityContext) this.mActivityContext).getDotInfoForItem((ItemInfoWithIcon) this.mOriginalIcon.getTag());
        NotificationContainer notificationContainer = this.mNotificationContainer;
        if (notificationContainer == null || dotInfoForItem == null) {
            return;
        }
        notificationContainer.updateHeader(dotInfoForItem.getNotificationCount());
    }

    @Override // android.view.View
    public final LauncherAccessibilityDelegate getAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public PopupContainerWithArrow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PopupContainerWithArrow(Context context) {
        this(context, null, 0);
    }
}
