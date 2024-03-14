package com.android.launcher3.touch;

import android.view.View;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.LauncherDragController;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.views.BubbleTextHolder;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
/* loaded from: classes.dex */
public final /* synthetic */ class j implements View.OnLongClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5213d;

    public /* synthetic */ j(int i4) {
        this.f5213d = i4;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(final View view) {
        switch (this.f5213d) {
            case 0:
                if (view instanceof LauncherAppWidgetHostView) {
                    TestLogging.recordEvent("Main", "Widgets.onLongClick");
                } else {
                    TestLogging.recordEvent("Main", "onWorkspaceItemLongClick");
                }
                Launcher launcher = Launcher.getLauncher(view.getContext());
                if (ItemLongClickListener.canStartDrag(launcher)) {
                    if ((launcher.isInState(LauncherState.NORMAL) || launcher.isInState(LauncherState.OVERVIEW) || launcher.isInState(LauncherState.EDIT_MODE)) && (view.getTag() instanceof ItemInfo)) {
                        launcher.setWaitingForResult(null);
                        ItemLongClickListener.beginDrag(view, launcher, (ItemInfo) view.getTag(), new DragOptions());
                        return true;
                    }
                    return false;
                }
                return false;
            default:
                TestLogging.recordEvent("Main", "onAllAppsItemLongClick");
                view.cancelLongPress();
                if (view instanceof BubbleTextHolder) {
                    view = ((BubbleTextHolder) view).getBubbleText();
                }
                Launcher launcher2 = Launcher.getLauncher(view.getContext());
                if (ItemLongClickListener.canStartDrag(launcher2) && ((launcher2.isInState(LauncherState.ALL_APPS) || launcher2.isInState(LauncherState.OVERVIEW)) && !launcher2.getWorkspace().isSwitchingState())) {
                    StatsLogManager.StatsLogger logger = launcher2.getStatsLogManager().logger();
                    if (view.getTag() instanceof ItemInfo) {
                        logger.withItemInfo((ItemInfo) view.getTag());
                    }
                    logger.log(StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_ITEM_LONG_PRESSED);
                    DragController dragController = launcher2.getDragController();
                    final LauncherDragController launcherDragController = (LauncherDragController) dragController;
                    dragController.addDragListener(new DragController.DragListener
                    /*  JADX ERROR: Method code generation error
                        jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x00c4: INVOKE  
                          (r1v8 'dragController' com.android.launcher3.dragndrop.DragController)
                          (wrap: com.android.launcher3.dragndrop.DragController$DragListener : 0x00c1: CONSTRUCTOR  (r2v3 com.android.launcher3.dragndrop.DragController$DragListener A[REMOVE]) = 
                          (r5v1 'view' android.view.View A[DONT_INLINE])
                          (r3v1 'launcherDragController' com.android.launcher3.dragndrop.LauncherDragController A[DONT_INLINE])
                         call: com.android.launcher3.touch.ItemLongClickListener.1.<init>(android.view.View, com.android.launcher3.dragndrop.LauncherDragController):void type: CONSTRUCTOR)
                         type: VIRTUAL call: com.android.launcher3.dragndrop.DragController.addDragListener(com.android.launcher3.dragndrop.DragController$DragListener):void in method: com.android.launcher3.touch.j.onLongClick(android.view.View):boolean, file: classes.dex
                        	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:309)
                        	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:272)
                        	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:91)
                        	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:80)
                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:123)
                        	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:80)
                        	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:267)
                        	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:79)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                        	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:296)
                        	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:275)
                        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:377)
                        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:306)
                        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:272)
                        	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(Unknown Source)
                        	at java.util.ArrayList.forEach(Unknown Source)
                        	at java.util.stream.SortedOps$RefSortingSink.end(Unknown Source)
                        	at java.util.stream.Sink$ChainedReference.end(Unknown Source)
                        Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Method arg registers not loaded: com.android.launcher3.touch.ItemLongClickListener.1.<init>(android.view.View, com.android.launcher3.dragndrop.LauncherDragController):void, class status: GENERATED_AND_UNLOADED
                        	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:251)
                        	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:791)
                        	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:718)
                        	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:417)
                        	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:144)
                        	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:120)
                        	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                        	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1097)
                        	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:872)
                        	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:421)
                        	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:302)
                        	... 27 more
                        */
                    /*
                        this = this;
                        int r4 = r4.f5213d
                        r0 = 0
                        java.lang.String r1 = "Main"
                        switch(r4) {
                            case 0: goto L9;
                            default: goto L8;
                        }
                    L8:
                        goto L5d
                    L9:
                        boolean r4 = r5 instanceof com.android.launcher3.widget.LauncherAppWidgetHostView
                        if (r4 == 0) goto L13
                        java.lang.String r4 = "Widgets.onLongClick"
                        com.android.launcher3.testing.TestLogging.recordEvent(r1, r4)
                        goto L18
                    L13:
                        java.lang.String r4 = "onWorkspaceItemLongClick"
                        com.android.launcher3.testing.TestLogging.recordEvent(r1, r4)
                    L18:
                        android.content.Context r4 = r5.getContext()
                        com.android.launcher3.Launcher r4 = com.android.launcher3.Launcher.getLauncher(r4)
                        boolean r1 = com.android.launcher3.touch.ItemLongClickListener.canStartDrag(r4)
                        if (r1 != 0) goto L27
                        goto L5c
                    L27:
                        com.android.launcher3.LauncherState r1 = com.android.launcher3.LauncherState.NORMAL
                        boolean r1 = r4.isInState(r1)
                        if (r1 != 0) goto L40
                        com.android.launcher3.uioverrides.states.OverviewState r1 = com.android.launcher3.LauncherState.OVERVIEW
                        boolean r1 = r4.isInState(r1)
                        if (r1 != 0) goto L40
                        com.android.launcher3.states.EditModeState r1 = com.android.launcher3.LauncherState.EDIT_MODE
                        boolean r1 = r4.isInState(r1)
                        if (r1 != 0) goto L40
                        goto L5c
                    L40:
                        java.lang.Object r1 = r5.getTag()
                        boolean r1 = r1 instanceof com.android.launcher3.model.data.ItemInfo
                        if (r1 != 0) goto L49
                        goto L5c
                    L49:
                        r0 = 0
                        r4.setWaitingForResult(r0)
                        java.lang.Object r0 = r5.getTag()
                        com.android.launcher3.model.data.ItemInfo r0 = (com.android.launcher3.model.data.ItemInfo) r0
                        com.android.launcher3.dragndrop.DragOptions r1 = new com.android.launcher3.dragndrop.DragOptions
                        r1.<init>()
                        com.android.launcher3.touch.ItemLongClickListener.beginDrag(r5, r4, r0, r1)
                        r0 = 1
                    L5c:
                        return r0
                    L5d:
                        java.lang.String r4 = "onAllAppsItemLongClick"
                        com.android.launcher3.testing.TestLogging.recordEvent(r1, r4)
                        r5.cancelLongPress()
                        boolean r4 = r5 instanceof com.android.launcher3.views.BubbleTextHolder
                        if (r4 == 0) goto L6f
                        com.android.launcher3.views.BubbleTextHolder r5 = (com.android.launcher3.views.BubbleTextHolder) r5
                        com.android.launcher3.BubbleTextView r5 = r5.getBubbleText()
                    L6f:
                        android.content.Context r4 = r5.getContext()
                        com.android.launcher3.Launcher r4 = com.android.launcher3.Launcher.getLauncher(r4)
                        boolean r1 = com.android.launcher3.touch.ItemLongClickListener.canStartDrag(r4)
                        if (r1 != 0) goto L7e
                        goto Ld7
                    L7e:
                        com.android.launcher3.uioverrides.states.AllAppsState r1 = com.android.launcher3.LauncherState.ALL_APPS
                        boolean r1 = r4.isInState(r1)
                        if (r1 != 0) goto L8f
                        com.android.launcher3.uioverrides.states.OverviewState r1 = com.android.launcher3.LauncherState.OVERVIEW
                        boolean r1 = r4.isInState(r1)
                        if (r1 != 0) goto L8f
                        goto Ld7
                    L8f:
                        com.android.launcher3.Workspace r1 = r4.getWorkspace()
                        boolean r1 = r1.isSwitchingState()
                        if (r1 == 0) goto L9a
                        goto Ld7
                    L9a:
                        com.android.launcher3.logging.StatsLogManager r1 = r4.getStatsLogManager()
                        com.android.launcher3.logging.StatsLogManager$StatsLogger r1 = r1.logger()
                        java.lang.Object r2 = r5.getTag()
                        boolean r2 = r2 instanceof com.android.launcher3.model.data.ItemInfo
                        if (r2 == 0) goto Lb3
                        java.lang.Object r2 = r5.getTag()
                        com.android.launcher3.model.data.ItemInfo r2 = (com.android.launcher3.model.data.ItemInfo) r2
                        r1.withItemInfo(r2)
                    Lb3:
                        com.android.launcher3.logging.StatsLogManager$LauncherEvent r2 = com.android.launcher3.logging.StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_ITEM_LONG_PRESSED
                        r1.log(r2)
                        com.android.launcher3.dragndrop.DragController r1 = r4.getDragController()
                        com.android.launcher3.touch.ItemLongClickListener$1 r2 = new com.android.launcher3.touch.ItemLongClickListener$1
                        r3 = r1
                        com.android.launcher3.dragndrop.LauncherDragController r3 = (com.android.launcher3.dragndrop.LauncherDragController) r3
                        r2.<init>()
                        r1.addDragListener(r2)
                        com.android.launcher3.Workspace r1 = r4.getWorkspace()
                        com.android.launcher3.allapps.ActivityAllAppsContainerView r4 = r4.getAppsView()
                        com.android.launcher3.dragndrop.DragOptions r2 = new com.android.launcher3.dragndrop.DragOptions
                        r2.<init>()
                        r1.beginDragShared(r5, r4, r2)
                    Ld7:
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.touch.j.onLongClick(android.view.View):boolean");
                }
            }
