package com.android.launcher3.logger;

import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
import com.google.protobuf.L;
import com.google.protobuf.M;
/* loaded from: classes.dex */
public final class LauncherAtomExtensions$DeviceSearchResultContainer extends J implements InterfaceC0774q0 {
    private static final LauncherAtomExtensions$DeviceSearchResultContainer DEFAULT_INSTANCE;
    public static final int GRID_X_FIELD_NUMBER = 3;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int QUERY_LENGTH_FIELD_NUMBER = 1;
    public static final int SEARCH_ATTRIBUTES_FIELD_NUMBER = 2;
    private int bitField0_;
    private int gridX_;
    private int queryLength_;
    private SearchAttributes searchAttributes_;

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void setGridX$2(int i4) {
            copyOnWrite();
            LauncherAtomExtensions$DeviceSearchResultContainer.a((LauncherAtomExtensions$DeviceSearchResultContainer) this.instance, i4);
        }

        public final void setQueryLength$1(int i4) {
            copyOnWrite();
            LauncherAtomExtensions$DeviceSearchResultContainer.b((LauncherAtomExtensions$DeviceSearchResultContainer) this.instance, i4);
        }

        public final void setSearchAttributes(SearchAttributes searchAttributes) {
            copyOnWrite();
            LauncherAtomExtensions$DeviceSearchResultContainer.c((LauncherAtomExtensions$DeviceSearchResultContainer) this.instance, searchAttributes);
        }

        private Builder() {
            super(LauncherAtomExtensions$DeviceSearchResultContainer.DEFAULT_INSTANCE);
        }
    }

    /* loaded from: classes.dex */
    public final class SearchAttributes extends J implements InterfaceC0774q0 {
        public static final int CORRECTED_QUERY_FIELD_NUMBER = 1;
        private static final SearchAttributes DEFAULT_INSTANCE;
        public static final int DIRECT_MATCH_FIELD_NUMBER = 2;
        public static final int ENTRY_STATE_FIELD_NUMBER = 3;
        private static volatile InterfaceC0787x0 PARSER;
        private int bitField0_;
        private boolean correctedQuery_;
        private boolean directMatch_;
        private int entryState_;

        /* loaded from: classes.dex */
        public final class Builder extends E implements InterfaceC0774q0 {
            public /* synthetic */ Builder(int i4) {
                this();
            }

            public final void setCorrectedQuery() {
                copyOnWrite();
                SearchAttributes.a((SearchAttributes) this.instance);
            }

            public final void setDirectMatch() {
                copyOnWrite();
                SearchAttributes.b((SearchAttributes) this.instance);
            }

            public final void setEntryState(EntryState entryState) {
                copyOnWrite();
                SearchAttributes.c((SearchAttributes) this.instance, entryState);
            }

            private Builder() {
                super(SearchAttributes.DEFAULT_INSTANCE);
            }
        }

        /* loaded from: classes.dex */
        public enum EntryState implements L {
            ENTRY_STATE_UNKNOWN(0),
            ALL_APPS(1),
            QSB(2),
            OVERVIEW(3);
            
            private final int value;

            /* loaded from: classes.dex */
            final class EntryStateVerifier implements M {
                static final M INSTANCE = new EntryStateVerifier();

                @Override // com.google.protobuf.M
                public final boolean isInRange(int i4) {
                    return EntryState.forNumber(i4) != null;
                }
            }

            EntryState(int i4) {
                this.value = i4;
            }

            public static EntryState forNumber(int i4) {
                if (i4 != 0) {
                    if (i4 != 1) {
                        if (i4 != 2) {
                            if (i4 != 3) {
                                return null;
                            }
                            return OVERVIEW;
                        }
                        return QSB;
                    }
                    return ALL_APPS;
                }
                return ENTRY_STATE_UNKNOWN;
            }

            @Override // com.google.protobuf.L
            public final int getNumber() {
                return this.value;
            }
        }

        static {
            SearchAttributes searchAttributes = new SearchAttributes();
            DEFAULT_INSTANCE = searchAttributes;
            J.registerDefaultInstance(SearchAttributes.class, searchAttributes);
        }

        private SearchAttributes() {
        }

        public static void a(SearchAttributes searchAttributes) {
            searchAttributes.bitField0_ |= 1;
            searchAttributes.correctedQuery_ = true;
        }

        public static void b(SearchAttributes searchAttributes) {
            searchAttributes.bitField0_ |= 2;
            searchAttributes.directMatch_ = true;
        }

        public static void c(SearchAttributes searchAttributes, EntryState entryState) {
            searchAttributes.getClass();
            searchAttributes.entryState_ = entryState.getNumber();
            searchAttributes.bitField0_ |= 4;
        }

        public static SearchAttributes getDefaultInstance() {
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
                    return new B0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဌ\u0002", new Object[]{"bitField0_", "correctedQuery_", "directMatch_", "entryState_", EntryState.EntryStateVerifier.INSTANCE});
                case 3:
                    return new SearchAttributes();
                case 4:
                    return new Builder(0);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    InterfaceC0787x0 interfaceC0787x0 = PARSER;
                    if (interfaceC0787x0 == null) {
                        synchronized (SearchAttributes.class) {
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

        public final boolean getCorrectedQuery() {
            return this.correctedQuery_;
        }

        public final boolean getDirectMatch() {
            return this.directMatch_;
        }

        public final EntryState getEntryState() {
            EntryState forNumber = EntryState.forNumber(this.entryState_);
            return forNumber == null ? EntryState.ENTRY_STATE_UNKNOWN : forNumber;
        }
    }

    static {
        LauncherAtomExtensions$DeviceSearchResultContainer launcherAtomExtensions$DeviceSearchResultContainer = new LauncherAtomExtensions$DeviceSearchResultContainer();
        DEFAULT_INSTANCE = launcherAtomExtensions$DeviceSearchResultContainer;
        J.registerDefaultInstance(LauncherAtomExtensions$DeviceSearchResultContainer.class, launcherAtomExtensions$DeviceSearchResultContainer);
    }

    private LauncherAtomExtensions$DeviceSearchResultContainer() {
    }

    public static void a(LauncherAtomExtensions$DeviceSearchResultContainer launcherAtomExtensions$DeviceSearchResultContainer, int i4) {
        launcherAtomExtensions$DeviceSearchResultContainer.bitField0_ |= 4;
        launcherAtomExtensions$DeviceSearchResultContainer.gridX_ = i4;
    }

    public static void b(LauncherAtomExtensions$DeviceSearchResultContainer launcherAtomExtensions$DeviceSearchResultContainer, int i4) {
        launcherAtomExtensions$DeviceSearchResultContainer.bitField0_ |= 1;
        launcherAtomExtensions$DeviceSearchResultContainer.queryLength_ = i4;
    }

    public static void c(LauncherAtomExtensions$DeviceSearchResultContainer launcherAtomExtensions$DeviceSearchResultContainer, SearchAttributes searchAttributes) {
        launcherAtomExtensions$DeviceSearchResultContainer.getClass();
        launcherAtomExtensions$DeviceSearchResultContainer.searchAttributes_ = searchAttributes;
        launcherAtomExtensions$DeviceSearchResultContainer.bitField0_ |= 2;
    }

    public static LauncherAtomExtensions$DeviceSearchResultContainer getDefaultInstance() {
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002ဉ\u0001\u0003င\u0002", new Object[]{"bitField0_", "queryLength_", "searchAttributes_", "gridX_"});
            case 3:
                return new LauncherAtomExtensions$DeviceSearchResultContainer();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtomExtensions$DeviceSearchResultContainer.class) {
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

    public final int getGridX() {
        return this.gridX_;
    }

    public final int getQueryLength() {
        return this.queryLength_;
    }

    public final SearchAttributes getSearchAttributes() {
        SearchAttributes searchAttributes = this.searchAttributes_;
        return searchAttributes == null ? SearchAttributes.getDefaultInstance() : searchAttributes;
    }

    public final boolean hasQueryLength() {
        return (this.bitField0_ & 1) != 0;
    }

    public final boolean hasSearchAttributes() {
        return (this.bitField0_ & 2) != 0;
    }
}
