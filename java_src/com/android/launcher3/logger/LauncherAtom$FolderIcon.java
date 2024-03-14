package com.android.launcher3.logger;

import com.android.launcher3.logger.LauncherAtom$FromState;
import com.android.launcher3.logger.LauncherAtom$ToState;
import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$FolderIcon extends J implements InterfaceC0774q0 {
    public static final int CARDINALITY_FIELD_NUMBER = 1;
    private static final LauncherAtom$FolderIcon DEFAULT_INSTANCE;
    public static final int FROM_LABEL_STATE_FIELD_NUMBER = 2;
    public static final int LABEL_INFO_FIELD_NUMBER = 4;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int TO_LABEL_STATE_FIELD_NUMBER = 3;
    private int bitField0_;
    private int cardinality_;
    private int fromLabelState_;
    private String labelInfo_ = "";
    private int toLabelState_;

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void setCardinality(int i4) {
            copyOnWrite();
            LauncherAtom$FolderIcon.a((LauncherAtom$FolderIcon) this.instance, i4);
        }

        public final void setFromLabelState(LauncherAtom$FromState launcherAtom$FromState) {
            copyOnWrite();
            LauncherAtom$FolderIcon.b((LauncherAtom$FolderIcon) this.instance, launcherAtom$FromState);
        }

        public final void setLabelInfo(String str) {
            copyOnWrite();
            LauncherAtom$FolderIcon.c((LauncherAtom$FolderIcon) this.instance, str);
        }

        public final void setToLabelState(LauncherAtom$ToState launcherAtom$ToState) {
            copyOnWrite();
            LauncherAtom$FolderIcon.d((LauncherAtom$FolderIcon) this.instance, launcherAtom$ToState);
        }

        private Builder() {
            super(LauncherAtom$FolderIcon.DEFAULT_INSTANCE);
        }
    }

    static {
        LauncherAtom$FolderIcon launcherAtom$FolderIcon = new LauncherAtom$FolderIcon();
        DEFAULT_INSTANCE = launcherAtom$FolderIcon;
        J.registerDefaultInstance(LauncherAtom$FolderIcon.class, launcherAtom$FolderIcon);
    }

    private LauncherAtom$FolderIcon() {
    }

    public static void a(LauncherAtom$FolderIcon launcherAtom$FolderIcon, int i4) {
        launcherAtom$FolderIcon.bitField0_ |= 1;
        launcherAtom$FolderIcon.cardinality_ = i4;
    }

    public static void b(LauncherAtom$FolderIcon launcherAtom$FolderIcon, LauncherAtom$FromState launcherAtom$FromState) {
        launcherAtom$FolderIcon.getClass();
        launcherAtom$FolderIcon.fromLabelState_ = launcherAtom$FromState.getNumber();
        launcherAtom$FolderIcon.bitField0_ |= 2;
    }

    public static void c(LauncherAtom$FolderIcon launcherAtom$FolderIcon, String str) {
        launcherAtom$FolderIcon.getClass();
        str.getClass();
        launcherAtom$FolderIcon.bitField0_ |= 8;
        launcherAtom$FolderIcon.labelInfo_ = str;
    }

    public static void d(LauncherAtom$FolderIcon launcherAtom$FolderIcon, LauncherAtom$ToState launcherAtom$ToState) {
        launcherAtom$FolderIcon.getClass();
        launcherAtom$FolderIcon.toLabelState_ = launcherAtom$ToState.getNumber();
        launcherAtom$FolderIcon.bitField0_ |= 4;
    }

    public static LauncherAtom$FolderIcon getDefaultInstance() {
        return DEFAULT_INSTANCE;
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဌ\u0001\u0003ဌ\u0002\u0004ဈ\u0003", new Object[]{"bitField0_", "cardinality_", "fromLabelState_", LauncherAtom$FromState.FromStateVerifier.INSTANCE, "toLabelState_", LauncherAtom$ToState.ToStateVerifier.INSTANCE, "labelInfo_"});
            case 3:
                return new LauncherAtom$FolderIcon();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$FolderIcon.class) {
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

    public final int getCardinality() {
        return this.cardinality_;
    }

    public final LauncherAtom$FromState getFromLabelState() {
        LauncherAtom$FromState forNumber = LauncherAtom$FromState.forNumber(this.fromLabelState_);
        return forNumber == null ? LauncherAtom$FromState.FROM_STATE_UNSPECIFIED : forNumber;
    }

    public final String getLabelInfo() {
        return this.labelInfo_;
    }

    public final LauncherAtom$ToState getToLabelState() {
        LauncherAtom$ToState forNumber = LauncherAtom$ToState.forNumber(this.toLabelState_);
        return forNumber == null ? LauncherAtom$ToState.TO_STATE_UNSPECIFIED : forNumber;
    }
}
