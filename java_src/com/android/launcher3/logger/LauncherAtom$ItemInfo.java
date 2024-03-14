package com.android.launcher3.logger;

import com.android.launcher3.logger.LauncherAtom$Application;
import com.android.launcher3.logger.LauncherAtom$Attribute;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$FolderIcon;
import com.android.launcher3.logger.LauncherAtom$SearchActionItem;
import com.android.launcher3.logger.LauncherAtom$Shortcut;
import com.android.launcher3.logger.LauncherAtom$Task;
import com.android.launcher3.logger.LauncherAtom$ToState;
import com.android.launcher3.logger.LauncherAtom$Widget;
import com.google.protobuf.AbstractC0745c;
import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
import com.google.protobuf.K;
import com.google.protobuf.N;
import com.google.protobuf.O;
import com.google.protobuf.P;
import java.util.Arrays;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class LauncherAtom$ItemInfo extends J implements InterfaceC0774q0 {
    public static final int APPLICATION_FIELD_NUMBER = 1;
    public static final int CONTAINER_INFO_FIELD_NUMBER = 7;
    private static final LauncherAtom$ItemInfo DEFAULT_INSTANCE;
    public static final int FOLDER_ICON_FIELD_NUMBER = 9;
    public static final int IS_KIDS_MODE_FIELD_NUMBER = 13;
    public static final int IS_WORK_FIELD_NUMBER = 6;
    public static final int ITEM_ATTRIBUTES_FIELD_NUMBER = 12;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int RANK_FIELD_NUMBER = 5;
    public static final int SEARCH_ACTION_ITEM_FIELD_NUMBER = 11;
    public static final int SHORTCUT_FIELD_NUMBER = 3;
    public static final int SLICE_FIELD_NUMBER = 10;
    public static final int TASK_FIELD_NUMBER = 2;
    public static final int WIDGET_FIELD_NUMBER = 4;
    private static final O itemAttributes_converter_ = new LauncherAtom$ToState.AnonymousClass1();
    private int bitField0_;
    private LauncherAtom$ContainerInfo containerInfo_;
    private boolean isKidsMode_;
    private boolean isWork_;
    private Object item_;
    private int rank_;
    private int itemCase_ = 0;
    private N itemAttributes_ = K.f8552g;

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void addAllItemAttributes(Iterable iterable) {
            copyOnWrite();
            LauncherAtom$ItemInfo.a((LauncherAtom$ItemInfo) this.instance, iterable);
        }

        public final void addItemAttributes(LauncherAtom$Attribute launcherAtom$Attribute) {
            copyOnWrite();
            LauncherAtom$ItemInfo.b((LauncherAtom$ItemInfo) this.instance, launcherAtom$Attribute);
        }

        public final LauncherAtom$ContainerInfo getContainerInfo() {
            return ((LauncherAtom$ItemInfo) this.instance).getContainerInfo();
        }

        public final LauncherAtom$FolderIcon getFolderIcon() {
            return ((LauncherAtom$ItemInfo) this.instance).getFolderIcon();
        }

        public final boolean hasContainerInfo() {
            return ((LauncherAtom$ItemInfo) this.instance).hasContainerInfo();
        }

        public final void setApplication(LauncherAtom$Application.Builder builder) {
            copyOnWrite();
            LauncherAtom$ItemInfo.c((LauncherAtom$ItemInfo) this.instance, (LauncherAtom$Application) builder.build());
        }

        public final void setContainerInfo(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo) {
            copyOnWrite();
            LauncherAtom$ItemInfo.d((LauncherAtom$ItemInfo) this.instance, launcherAtom$ContainerInfo);
        }

        public final void setFolderIcon(LauncherAtom$FolderIcon.Builder builder) {
            copyOnWrite();
            LauncherAtom$ItemInfo.e((LauncherAtom$ItemInfo) this.instance, (LauncherAtom$FolderIcon) builder.build());
        }

        public final void setIsKidsMode(boolean z4) {
            copyOnWrite();
            LauncherAtom$ItemInfo.f((LauncherAtom$ItemInfo) this.instance, z4);
        }

        public final void setIsWork(boolean z4) {
            copyOnWrite();
            LauncherAtom$ItemInfo.g((LauncherAtom$ItemInfo) this.instance, z4);
        }

        public final void setRank(int i4) {
            copyOnWrite();
            LauncherAtom$ItemInfo.h((LauncherAtom$ItemInfo) this.instance, i4);
        }

        public final void setSearchActionItem(LauncherAtom$SearchActionItem.Builder builder) {
            copyOnWrite();
            LauncherAtom$ItemInfo.i((LauncherAtom$ItemInfo) this.instance, (LauncherAtom$SearchActionItem) builder.build());
        }

        public final void setShortcut(LauncherAtom$Shortcut.Builder builder) {
            copyOnWrite();
            LauncherAtom$ItemInfo.j((LauncherAtom$ItemInfo) this.instance, (LauncherAtom$Shortcut) builder.build());
        }

        public final void setSlice(LauncherAtom$Slice launcherAtom$Slice) {
            copyOnWrite();
            LauncherAtom$ItemInfo.k((LauncherAtom$ItemInfo) this.instance, launcherAtom$Slice);
        }

        public final void setTask(LauncherAtom$Task.Builder builder) {
            copyOnWrite();
            LauncherAtom$ItemInfo.l((LauncherAtom$ItemInfo) this.instance, (LauncherAtom$Task) builder.build());
        }

        public final void setWidget(LauncherAtom$Widget.Builder builder) {
            copyOnWrite();
            LauncherAtom$ItemInfo.m((LauncherAtom$ItemInfo) this.instance, (LauncherAtom$Widget) builder.build());
        }

        private Builder() {
            super(LauncherAtom$ItemInfo.DEFAULT_INSTANCE);
        }

        public final void setContainerInfo(LauncherAtom$ContainerInfo.Builder builder) {
            copyOnWrite();
            LauncherAtom$ItemInfo.d((LauncherAtom$ItemInfo) this.instance, (LauncherAtom$ContainerInfo) builder.build());
        }
    }

    /* loaded from: classes.dex */
    public enum ItemCase {
        APPLICATION(1),
        TASK(2),
        SHORTCUT(3),
        WIDGET(4),
        FOLDER_ICON(9),
        SLICE(10),
        SEARCH_ACTION_ITEM(11),
        ITEM_NOT_SET(0);
        
        private final int value;

        ItemCase(int i4) {
            this.value = i4;
        }

        public final int getNumber() {
            return this.value;
        }
    }

    static {
        LauncherAtom$ItemInfo launcherAtom$ItemInfo = new LauncherAtom$ItemInfo();
        DEFAULT_INSTANCE = launcherAtom$ItemInfo;
        J.registerDefaultInstance(LauncherAtom$ItemInfo.class, launcherAtom$ItemInfo);
    }

    private LauncherAtom$ItemInfo() {
    }

    public static void a(LauncherAtom$ItemInfo launcherAtom$ItemInfo, Iterable iterable) {
        N n4 = launcherAtom$ItemInfo.itemAttributes_;
        if (!((AbstractC0745c) n4).f8626d) {
            K k4 = (K) n4;
            int i4 = k4.f8554f;
            int i5 = i4 == 0 ? 10 : i4 * 2;
            if (i5 < i4) {
                throw new IllegalArgumentException();
            }
            launcherAtom$ItemInfo.itemAttributes_ = new K(Arrays.copyOf(k4.f8553e, i5), k4.f8554f);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            ((K) launcherAtom$ItemInfo.itemAttributes_).i(((LauncherAtom$Attribute) it.next()).getNumber());
        }
    }

    public static void b(LauncherAtom$ItemInfo launcherAtom$ItemInfo, LauncherAtom$Attribute launcherAtom$Attribute) {
        launcherAtom$ItemInfo.getClass();
        launcherAtom$Attribute.getClass();
        N n4 = launcherAtom$ItemInfo.itemAttributes_;
        if (!((AbstractC0745c) n4).f8626d) {
            K k4 = (K) n4;
            int i4 = k4.f8554f;
            int i5 = i4 == 0 ? 10 : i4 * 2;
            if (i5 < i4) {
                throw new IllegalArgumentException();
            }
            launcherAtom$ItemInfo.itemAttributes_ = new K(Arrays.copyOf(k4.f8553e, i5), k4.f8554f);
        }
        ((K) launcherAtom$ItemInfo.itemAttributes_).i(launcherAtom$Attribute.getNumber());
    }

    public static void c(LauncherAtom$ItemInfo launcherAtom$ItemInfo, LauncherAtom$Application launcherAtom$Application) {
        launcherAtom$ItemInfo.getClass();
        launcherAtom$ItemInfo.item_ = launcherAtom$Application;
        launcherAtom$ItemInfo.itemCase_ = 1;
    }

    public static void d(LauncherAtom$ItemInfo launcherAtom$ItemInfo, LauncherAtom$ContainerInfo launcherAtom$ContainerInfo) {
        launcherAtom$ItemInfo.getClass();
        launcherAtom$ContainerInfo.getClass();
        launcherAtom$ItemInfo.containerInfo_ = launcherAtom$ContainerInfo;
        launcherAtom$ItemInfo.bitField0_ |= 512;
    }

    public static void e(LauncherAtom$ItemInfo launcherAtom$ItemInfo, LauncherAtom$FolderIcon launcherAtom$FolderIcon) {
        launcherAtom$ItemInfo.getClass();
        launcherAtom$ItemInfo.item_ = launcherAtom$FolderIcon;
        launcherAtom$ItemInfo.itemCase_ = 9;
    }

    public static void f(LauncherAtom$ItemInfo launcherAtom$ItemInfo, boolean z4) {
        launcherAtom$ItemInfo.bitField0_ |= 1024;
        launcherAtom$ItemInfo.isKidsMode_ = z4;
    }

    public static void g(LauncherAtom$ItemInfo launcherAtom$ItemInfo, boolean z4) {
        launcherAtom$ItemInfo.bitField0_ |= 256;
        launcherAtom$ItemInfo.isWork_ = z4;
    }

    public static void h(LauncherAtom$ItemInfo launcherAtom$ItemInfo, int i4) {
        launcherAtom$ItemInfo.bitField0_ |= 128;
        launcherAtom$ItemInfo.rank_ = i4;
    }

    public static void i(LauncherAtom$ItemInfo launcherAtom$ItemInfo, LauncherAtom$SearchActionItem launcherAtom$SearchActionItem) {
        launcherAtom$ItemInfo.getClass();
        launcherAtom$ItemInfo.item_ = launcherAtom$SearchActionItem;
        launcherAtom$ItemInfo.itemCase_ = 11;
    }

    public static void j(LauncherAtom$ItemInfo launcherAtom$ItemInfo, LauncherAtom$Shortcut launcherAtom$Shortcut) {
        launcherAtom$ItemInfo.getClass();
        launcherAtom$ItemInfo.item_ = launcherAtom$Shortcut;
        launcherAtom$ItemInfo.itemCase_ = 3;
    }

    public static void k(LauncherAtom$ItemInfo launcherAtom$ItemInfo, LauncherAtom$Slice launcherAtom$Slice) {
        launcherAtom$ItemInfo.getClass();
        launcherAtom$Slice.getClass();
        launcherAtom$ItemInfo.item_ = launcherAtom$Slice;
        launcherAtom$ItemInfo.itemCase_ = 10;
    }

    public static void l(LauncherAtom$ItemInfo launcherAtom$ItemInfo, LauncherAtom$Task launcherAtom$Task) {
        launcherAtom$ItemInfo.getClass();
        launcherAtom$ItemInfo.item_ = launcherAtom$Task;
        launcherAtom$ItemInfo.itemCase_ = 2;
    }

    public static void m(LauncherAtom$ItemInfo launcherAtom$ItemInfo, LauncherAtom$Widget launcherAtom$Widget) {
        launcherAtom$ItemInfo.getClass();
        launcherAtom$ItemInfo.item_ = launcherAtom$Widget;
        launcherAtom$ItemInfo.itemCase_ = 4;
    }

    public static Builder newBuilder() {
        return (Builder) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\f\u0001\u0001\u0001\r\f\u0000\u0001\u0000\u0001ြ\u0000\u0002ြ\u0000\u0003ြ\u0000\u0004ြ\u0000\u0005င\u0007\u0006ဇ\b\u0007ဉ\t\tြ\u0000\nြ\u0000\u000bြ\u0000\f\u001e\rဇ\n", new Object[]{"item_", "itemCase_", "bitField0_", LauncherAtom$Application.class, LauncherAtom$Task.class, LauncherAtom$Shortcut.class, LauncherAtom$Widget.class, "rank_", "isWork_", "containerInfo_", LauncherAtom$FolderIcon.class, LauncherAtom$Slice.class, LauncherAtom$SearchActionItem.class, "itemAttributes_", LauncherAtom$Attribute.AttributeVerifier.INSTANCE, "isKidsMode_"});
            case 3:
                return new LauncherAtom$ItemInfo();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$ItemInfo.class) {
                        interfaceC0787x0 = PARSER;
                        if (interfaceC0787x0 == null) {
                            interfaceC0787x0 = new F(DEFAULT_INSTANCE);
                            PARSER = interfaceC0787x0;
                        }
                    }
                }
                return interfaceC0787x0;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final LauncherAtom$Application getApplication() {
        return this.itemCase_ == 1 ? (LauncherAtom$Application) this.item_ : LauncherAtom$Application.getDefaultInstance();
    }

    public final LauncherAtom$ContainerInfo getContainerInfo() {
        LauncherAtom$ContainerInfo launcherAtom$ContainerInfo = this.containerInfo_;
        return launcherAtom$ContainerInfo == null ? LauncherAtom$ContainerInfo.getDefaultInstance() : launcherAtom$ContainerInfo;
    }

    public final LauncherAtom$FolderIcon getFolderIcon() {
        return this.itemCase_ == 9 ? (LauncherAtom$FolderIcon) this.item_ : LauncherAtom$FolderIcon.getDefaultInstance();
    }

    public final boolean getIsKidsMode() {
        return this.isKidsMode_;
    }

    public final boolean getIsWork() {
        return this.isWork_;
    }

    public final P getItemAttributesList() {
        return new P(this.itemAttributes_, itemAttributes_converter_);
    }

    public final ItemCase getItemCase() {
        int i4 = this.itemCase_;
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 != 4) {
                            switch (i4) {
                                case 9:
                                    return ItemCase.FOLDER_ICON;
                                case 10:
                                    return ItemCase.SLICE;
                                case 11:
                                    return ItemCase.SEARCH_ACTION_ITEM;
                                default:
                                    return null;
                            }
                        }
                        return ItemCase.WIDGET;
                    }
                    return ItemCase.SHORTCUT;
                }
                return ItemCase.TASK;
            }
            return ItemCase.APPLICATION;
        }
        return ItemCase.ITEM_NOT_SET;
    }

    public final int getRank() {
        return this.rank_;
    }

    public final LauncherAtom$SearchActionItem getSearchActionItem() {
        return this.itemCase_ == 11 ? (LauncherAtom$SearchActionItem) this.item_ : LauncherAtom$SearchActionItem.getDefaultInstance();
    }

    public final LauncherAtom$Shortcut getShortcut() {
        return this.itemCase_ == 3 ? (LauncherAtom$Shortcut) this.item_ : LauncherAtom$Shortcut.getDefaultInstance();
    }

    public final LauncherAtom$Slice getSlice() {
        return this.itemCase_ == 10 ? (LauncherAtom$Slice) this.item_ : LauncherAtom$Slice.getDefaultInstance();
    }

    public final LauncherAtom$Task getTask() {
        return this.itemCase_ == 2 ? (LauncherAtom$Task) this.item_ : LauncherAtom$Task.getDefaultInstance();
    }

    public final LauncherAtom$Widget getWidget() {
        return this.itemCase_ == 4 ? (LauncherAtom$Widget) this.item_ : LauncherAtom$Widget.getDefaultInstance();
    }

    public final boolean hasContainerInfo() {
        return (this.bitField0_ & 512) != 0;
    }

    public final boolean hasTask() {
        return this.itemCase_ == 2;
    }
}
