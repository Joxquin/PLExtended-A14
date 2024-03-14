package com.android.quickstep.logging;

import android.content.Context;
import android.util.Log;
import android.util.StatsEvent;
import android.view.View;
import androidx.slice.SliceItem;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$FolderContainer;
import com.android.launcher3.logger.LauncherAtom$FolderIcon;
import com.android.launcher3.logger.LauncherAtom$FromState;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.logger.LauncherAtom$LauncherAttributes;
import com.android.launcher3.logger.LauncherAtom$Slice;
import com.android.launcher3.logger.LauncherAtom$ToState;
import com.android.launcher3.logger.LauncherAtomExtensions$DeviceSearchResultContainer;
import com.android.launcher3.logger.LauncherAtomExtensions$ExtendedContainers;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BaseModelUpdateTask;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.views.ActivityContext;
import com.android.quickstep.logging.StatsLogCompatManager;
import com.android.systemui.shared.system.InteractionJankMonitorWrapper;
import com.android.systemui.shared.system.SysUiStatsLog;
import java.util.Iterator;
import java.util.Objects;
import java.util.Optional;
import java.util.OptionalInt;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.Supplier;
import java.util.stream.Stream;
/* loaded from: classes.dex */
public class StatsLogCompatManager extends StatsLogManager {
    private static final int ALL_APPS_HIERARCHY_OFFSET = 400;
    private static final boolean DEBUG;
    private static final InstanceId DEFAULT_INSTANCE_ID;
    private static final int DEFAULT_PAGE_INDEX = -2;
    private static final int EXTENDED_CONTAINERS_HIERARCHY_OFFSET = 300;
    private static final int FOLDER_HIERARCHY_OFFSET = 100;
    private static final String IMPRESSION_TAG = "StatsImpressionLog";
    private static final boolean IS_VERBOSE;
    private static final String LATENCY_TAG = "StatsLatencyLog";
    public static final CopyOnWriteArrayList LOGS_CONSUMER;
    private static final int SEARCH_ATTRIBUTES_CORRECTED_QUERY = 1;
    private static final int SEARCH_ATTRIBUTES_DIRECT_MATCH = 2;
    private static final int SEARCH_ATTRIBUTES_ENTRY_STATE_ALL_APPS = 4;
    private static final int SEARCH_ATTRIBUTES_ENTRY_STATE_QSB = 8;
    private static final int SEARCH_RESULT_HIERARCHY_OFFSET = 200;
    private static final String TAG = "StatsLog";

    /* renamed from: com.android.quickstep.logging.StatsLogCompatManager$1  reason: invalid class name */
    /* loaded from: classes.dex */
    /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase;
        static final /* synthetic */ int[] $SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase;
        static final /* synthetic */ int[] $SwitchMap$com$android$launcher3$logging$StatsLogManager$LauncherEvent;

        static {
            int[] iArr = new int[LauncherAtom$ItemInfo.ItemCase.values().length];
            $SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase[1] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase[6] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase[5] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[LauncherAtom$ContainerInfo.ContainerCase.values().length];
            $SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase = iArr2;
            try {
                iArr2[9] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase[11] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase[6] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase[13] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase[2] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase[1] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            int[] iArr3 = new int[StatsLogManager.LauncherEvent.values().length];
            $SwitchMap$com$android$launcher3$logging$StatsLogManager$LauncherEvent = iArr3;
            try {
                iArr3[111] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$android$launcher3$logging$StatsLogManager$LauncherEvent[112] = 2;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    /* loaded from: classes.dex */
    class StatsCompatImpressionLogger implements StatsLogManager.StatsImpressionLogger {
        private boolean mAboveKeyboard;
        private InstanceId mInstanceId;
        private StatsLogManager.StatsImpressionLogger.State mLauncherState;
        private int mQueryLength;
        private int mResultSource;
        private int mResultType;
        private int mUid;

        public /* synthetic */ StatsCompatImpressionLogger(int i4) {
            this();
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsImpressionLogger
        public void log(StatsLogManager.EventEnum eventEnum) {
            String str;
            if (StatsLogCompatManager.IS_VERBOSE) {
                if (eventEnum instanceof Enum) {
                    str = ((Enum) eventEnum).name();
                } else {
                    str = eventEnum.getId() + "";
                }
                Log.d(StatsLogCompatManager.IMPRESSION_TAG, "\n" + String.format("InstanceId:%s ", this.mInstanceId) + String.format("ImpressionEvent:%s ", str) + String.format("\n\tLauncherState = %s ", this.mLauncherState) + String.format("\tQueryLength = %s ", Integer.valueOf(this.mQueryLength)) + String.format("\n\t ResultType = %s is_above_keyboard = %s uid = %s result_source = %s", Integer.valueOf(this.mResultType), Boolean.valueOf(this.mAboveKeyboard), Integer.valueOf(this.mUid), Integer.valueOf(this.mResultSource)));
            }
            SysUiStatsLog.write((int) SysUiStatsLog.LAUNCHER_IMPRESSION_EVENT_V2, eventEnum.getId(), this.mInstanceId.getId(), this.mLauncherState.getLauncherState(), this.mQueryLength, this.mResultType, this.mAboveKeyboard, this.mUid, this.mResultSource);
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsImpressionLogger
        public StatsLogManager.StatsImpressionLogger withAboveKeyboard(boolean z4) {
            this.mAboveKeyboard = z4;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsImpressionLogger
        public StatsLogManager.StatsImpressionLogger withInstanceId(InstanceId instanceId) {
            this.mInstanceId = instanceId;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsImpressionLogger
        public StatsLogManager.StatsImpressionLogger withQueryLength(int i4) {
            this.mQueryLength = i4;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsImpressionLogger
        public StatsLogManager.StatsImpressionLogger withResultSource(int i4) {
            this.mResultSource = i4;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsImpressionLogger
        public StatsLogManager.StatsImpressionLogger withResultType(int i4) {
            this.mResultType = i4;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsImpressionLogger
        public StatsLogManager.StatsImpressionLogger withState(StatsLogManager.StatsImpressionLogger.State state) {
            this.mLauncherState = state;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsImpressionLogger
        public StatsLogManager.StatsImpressionLogger withUid(int i4) {
            this.mUid = i4;
            return this;
        }

        private StatsCompatImpressionLogger() {
            this.mInstanceId = StatsLogCompatManager.DEFAULT_INSTANCE_ID;
            this.mLauncherState = StatsLogManager.StatsImpressionLogger.State.UNKNOWN;
            this.mQueryLength = -1;
            this.mAboveKeyboard = false;
        }
    }

    /* loaded from: classes.dex */
    class StatsCompatLatencyLogger implements StatsLogManager.StatsLatencyLogger {
        private int mCardinality;
        private InstanceId mInstanceId;
        private long mLatencyInMillis;
        private int mPackageId;
        private int mQueryLength;
        private int mSubEventType;
        private StatsLogManager.StatsLatencyLogger.LatencyType mType;

        public /* synthetic */ StatsCompatLatencyLogger(int i4) {
            this();
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLatencyLogger
        public void log(StatsLogManager.EventEnum eventEnum) {
            String str;
            if (StatsLogCompatManager.IS_VERBOSE) {
                if (eventEnum instanceof Enum) {
                    str = ((Enum) eventEnum).name();
                } else {
                    str = eventEnum.getId() + "";
                }
                Log.d(StatsLogCompatManager.LATENCY_TAG, "\n" + String.format("InstanceId:%s ", this.mInstanceId) + String.format("%s=%sms", str, Long.valueOf(this.mLatencyInMillis)));
            }
            SysUiStatsLog.write((int) SysUiStatsLog.LAUNCHER_LATENCY, eventEnum.getId(), this.mInstanceId.getId(), this.mPackageId, this.mLatencyInMillis, this.mType.getId(), this.mQueryLength, this.mSubEventType, this.mCardinality);
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLatencyLogger
        public StatsLogManager.StatsLatencyLogger withCardinality(int i4) {
            this.mCardinality = i4;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLatencyLogger
        public StatsLogManager.StatsLatencyLogger withInstanceId(InstanceId instanceId) {
            this.mInstanceId = instanceId;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLatencyLogger
        public StatsLogManager.StatsLatencyLogger withLatency(long j4) {
            this.mLatencyInMillis = j4;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLatencyLogger
        public StatsLogManager.StatsLatencyLogger withPackageId(int i4) {
            this.mPackageId = i4;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLatencyLogger
        public StatsLogManager.StatsLatencyLogger withQueryLength(int i4) {
            this.mQueryLength = i4;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLatencyLogger
        public StatsLogManager.StatsLatencyLogger withSubEventType(int i4) {
            this.mSubEventType = i4;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLatencyLogger
        public StatsLogManager.StatsLatencyLogger withType(StatsLogManager.StatsLatencyLogger.LatencyType latencyType) {
            this.mType = latencyType;
            return this;
        }

        private StatsCompatLatencyLogger() {
            this.mInstanceId = StatsLogCompatManager.DEFAULT_INSTANCE_ID;
            this.mType = StatsLogManager.StatsLatencyLogger.LatencyType.UNKNOWN;
            this.mPackageId = 0;
            this.mQueryLength = -1;
            this.mSubEventType = 0;
            this.mCardinality = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class StatsCompatLogger implements StatsLogManager.StatsLogger {
        private static final ItemInfo DEFAULT_ITEM_INFO;
        private final Optional mActivityContext;
        private final Context mContext;
        private LauncherAtom$Slice mSlice;
        private SliceItem mSliceItem;
        private ItemInfo mItemInfo = DEFAULT_ITEM_INFO;
        private InstanceId mInstanceId = StatsLogCompatManager.DEFAULT_INSTANCE_ID;
        private OptionalInt mRank = OptionalInt.empty();
        private Optional mContainerInfo = Optional.empty();
        private int mSrcState = 0;
        private int mDstState = 0;
        private Optional mFromState = Optional.empty();
        private Optional mToState = Optional.empty();
        private Optional mEditText = Optional.empty();
        private Optional mCardinality = Optional.empty();
        private int mInputType = 0;

        static {
            ItemInfo itemInfo = new ItemInfo();
            DEFAULT_ITEM_INFO = itemInfo;
            itemInfo.itemType = -1;
        }

        public StatsCompatLogger(Context context, ActivityContext activityContext) {
            this.mContext = context;
            this.mActivityContext = Optional.ofNullable(activityContext);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public LauncherAtom$ItemInfo applyOverwrites(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
            final LauncherAtom$ItemInfo.Builder builder = (LauncherAtom$ItemInfo.Builder) launcherAtom$ItemInfo.toBuilder$1();
            this.mRank.ifPresent(new IntConsumer() { // from class: com.android.quickstep.logging.h
                @Override // java.util.function.IntConsumer
                public final void accept(int i4) {
                    LauncherAtom$ItemInfo.Builder.this.setRank(i4);
                }
            });
            this.mContainerInfo.ifPresent(new i(builder, 2));
            this.mActivityContext.ifPresent(new i(builder, 0));
            if (this.mFromState.isPresent() || this.mToState.isPresent() || this.mEditText.isPresent()) {
                final LauncherAtom$FolderIcon.Builder builder2 = (LauncherAtom$FolderIcon.Builder) builder.getFolderIcon().toBuilder$1();
                this.mFromState.ifPresent(new Consumer() { // from class: com.android.quickstep.logging.j
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (r2) {
                            case 0:
                                builder2.setFromLabelState((LauncherAtom$FromState) obj);
                                return;
                            case 1:
                                builder2.setToLabelState((LauncherAtom$ToState) obj);
                                return;
                            default:
                                builder2.setLabelInfo((String) obj);
                                return;
                        }
                    }
                });
                this.mToState.ifPresent(new Consumer() { // from class: com.android.quickstep.logging.j
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (r2) {
                            case 0:
                                builder2.setFromLabelState((LauncherAtom$FromState) obj);
                                return;
                            case 1:
                                builder2.setToLabelState((LauncherAtom$ToState) obj);
                                return;
                            default:
                                builder2.setLabelInfo((String) obj);
                                return;
                        }
                    }
                });
                this.mEditText.ifPresent(new Consumer() { // from class: com.android.quickstep.logging.j
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (r2) {
                            case 0:
                                builder2.setFromLabelState((LauncherAtom$FromState) obj);
                                return;
                            case 1:
                                builder2.setToLabelState((LauncherAtom$ToState) obj);
                                return;
                            default:
                                builder2.setLabelInfo((String) obj);
                                return;
                        }
                    }
                });
                builder.setFolderIcon(builder2);
            }
            return (LauncherAtom$ItemInfo) builder.build();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$log$0(StatsLogManager.EventEnum eventEnum) {
            LauncherAtom$ItemInfo.Builder newBuilder = LauncherAtom$ItemInfo.newBuilder();
            newBuilder.setSlice(this.mSlice);
            this.mContainerInfo.ifPresent(new i(newBuilder, 1));
            write(eventEnum, applyOverwrites((LauncherAtom$ItemInfo) newBuilder.build()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$log$1(StatsLogManager.EventEnum eventEnum) {
            write(eventEnum, applyOverwrites(this.mItemInfo.buildProto()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Integer lambda$write$3(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
            return Integer.valueOf(StatsLogCompatManager.getCardinality(launcherAtom$ItemInfo));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void write(StatsLogManager.EventEnum eventEnum, final LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
            String str;
            InstanceId instanceId = this.mInstanceId;
            int i4 = this.mSrcState;
            int i5 = this.mDstState;
            int i6 = this.mInputType;
            if (StatsLogCompatManager.IS_VERBOSE) {
                if (eventEnum instanceof Enum) {
                    str = ((Enum) eventEnum).name();
                } else {
                    str = eventEnum.getId() + "";
                }
                StringBuilder sb = new StringBuilder("\n");
                if (instanceId != StatsLogCompatManager.DEFAULT_INSTANCE_ID) {
                    sb.append(String.format("InstanceId:%s ", instanceId));
                }
                sb.append(str);
                if (i4 != 0 || i5 != 0) {
                    sb.append(String.format("(State:%s->%s)", StatsLogCompatManager.getStateString(i4), StatsLogCompatManager.getStateString(i5)));
                }
                if (launcherAtom$ItemInfo.hasContainerInfo()) {
                    sb.append("\n");
                    sb.append(launcherAtom$ItemInfo);
                }
                Log.d(StatsLogCompatManager.TAG, sb.toString());
            }
            Iterator it = StatsLogCompatManager.LOGS_CONSUMER.iterator();
            while (it.hasNext()) {
                ((StatsLogConsumer) it.next()).consume(eventEnum, launcherAtom$ItemInfo);
            }
            if (Utilities.isRunningInTestHarness()) {
                return;
            }
            SysUiStatsLog.write(19, 0, i4, i5, null, false, eventEnum.getId(), launcherAtom$ItemInfo.getItemCase().getNumber(), instanceId.getId(), 0, StatsLogCompatManager.getPackageName(launcherAtom$ItemInfo), StatsLogCompatManager.getComponentName(launcherAtom$ItemInfo), StatsLogCompatManager.getGridX(launcherAtom$ItemInfo, false), StatsLogCompatManager.getGridY(launcherAtom$ItemInfo, false), StatsLogCompatManager.getPageId(launcherAtom$ItemInfo), StatsLogCompatManager.getGridX(launcherAtom$ItemInfo, true), StatsLogCompatManager.getGridY(launcherAtom$ItemInfo, true), StatsLogCompatManager.getParentPageId(launcherAtom$ItemInfo), StatsLogCompatManager.getHierarchy(launcherAtom$ItemInfo), launcherAtom$ItemInfo.getIsWork(), launcherAtom$ItemInfo.getRank(), launcherAtom$ItemInfo.getFolderIcon().getFromLabelState().getNumber(), launcherAtom$ItemInfo.getFolderIcon().getToLabelState().getNumber(), launcherAtom$ItemInfo.getFolderIcon().getLabelInfo(), ((Integer) this.mCardinality.orElseGet(new Supplier() { // from class: com.android.quickstep.logging.l
                @Override // java.util.function.Supplier
                public final Object get() {
                    Integer lambda$write$3;
                    lambda$write$3 = StatsLogCompatManager.StatsCompatLogger.lambda$write$3(LauncherAtom$ItemInfo.this);
                    return lambda$write$3;
                }
            })).intValue(), StatsLogCompatManager.getFeatures(launcherAtom$ItemInfo), StatsLogCompatManager.getSearchAttributes(launcherAtom$ItemInfo), StatsLogCompatManager.getAttributes(launcherAtom$ItemInfo), i6);
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public void log(final StatsLogManager.EventEnum eventEnum) {
            String str;
            if (Utilities.ATLEAST_R) {
                if (StatsLogCompatManager.DEBUG) {
                    if (eventEnum instanceof Enum) {
                        str = ((Enum) eventEnum).name();
                    } else {
                        str = eventEnum.getId() + "";
                    }
                    Log.d(StatsLogCompatManager.TAG, str);
                }
                LauncherAppState launcherAppState = (LauncherAppState) LauncherAppState.INSTANCE.getNoCreate();
                if (this.mSlice == null && this.mSliceItem != null) {
                    LauncherAtom$Slice.Builder newBuilder = LauncherAtom$Slice.newBuilder();
                    newBuilder.setUri(this.mSliceItem.g().c().toString());
                    this.mSlice = (LauncherAtom$Slice) newBuilder.build();
                }
                if (this.mSlice != null) {
                    Executors.MODEL_EXECUTOR.execute(new Runnable(this) { // from class: com.android.quickstep.logging.k

                        /* renamed from: e  reason: collision with root package name */
                        public final /* synthetic */ StatsLogCompatManager.StatsCompatLogger f5738e;

                        {
                            this.f5738e = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            switch (r3) {
                                case 0:
                                    this.f5738e.lambda$log$0(eventEnum);
                                    return;
                                default:
                                    this.f5738e.lambda$log$1(eventEnum);
                                    return;
                            }
                        }
                    });
                    return;
                }
                ItemInfo itemInfo = this.mItemInfo;
                if (itemInfo == null) {
                    return;
                }
                if (itemInfo.container < 0 || launcherAppState == null) {
                    Executors.MODEL_EXECUTOR.execute(new Runnable(this) { // from class: com.android.quickstep.logging.k

                        /* renamed from: e  reason: collision with root package name */
                        public final /* synthetic */ StatsLogCompatManager.StatsCompatLogger f5738e;

                        {
                            this.f5738e = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            switch (r3) {
                                case 0:
                                    this.f5738e.lambda$log$0(eventEnum);
                                    return;
                                default:
                                    this.f5738e.lambda$log$1(eventEnum);
                                    return;
                            }
                        }
                    });
                } else {
                    launcherAppState.getModel().enqueueModelUpdateTask(new BaseModelUpdateTask() { // from class: com.android.quickstep.logging.StatsLogCompatManager.StatsCompatLogger.1
                        @Override // com.android.launcher3.model.BaseModelUpdateTask
                        public void execute(LauncherAppState launcherAppState2, BgDataModel bgDataModel, AllAppsList allAppsList) {
                            StatsCompatLogger statsCompatLogger = StatsCompatLogger.this;
                            statsCompatLogger.write(eventEnum, statsCompatLogger.applyOverwrites(statsCompatLogger.mItemInfo.buildProto((FolderInfo) bgDataModel.folders.get(StatsCompatLogger.this.mItemInfo.container))));
                        }
                    });
                }
            }
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public void sendToInteractionJankMonitor(StatsLogManager.EventEnum eventEnum, View view) {
            if (eventEnum instanceof StatsLogManager.LauncherEvent) {
                int i4 = AnonymousClass1.$SwitchMap$com$android$launcher3$logging$StatsLogManager$LauncherEvent[((StatsLogManager.LauncherEvent) eventEnum).ordinal()];
                if (i4 == 1) {
                    InteractionJankMonitorWrapper.begin(view, 26);
                } else if (i4 != 2) {
                } else {
                    InteractionJankMonitorWrapper.end(26);
                }
            }
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withCardinality(int i4) {
            this.mCardinality = Optional.of(Integer.valueOf(i4));
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withContainerInfo(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo) {
            if (this.mItemInfo == DEFAULT_ITEM_INFO) {
                this.mContainerInfo = Optional.of(launcherAtom$ContainerInfo);
                return this;
            }
            throw new IllegalStateException("ItemInfo and ContainerInfo are mutual exclusive; cannot log both.");
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withDstState(int i4) {
            this.mDstState = i4;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withEditText(String str) {
            this.mEditText = Optional.of(str);
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withFromState(LauncherAtom$FromState launcherAtom$FromState) {
            this.mFromState = Optional.of(launcherAtom$FromState);
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withInputType(int i4) {
            this.mInputType = i4;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withInstanceId(InstanceId instanceId) {
            this.mInstanceId = instanceId;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withItemInfo(ItemInfo itemInfo) {
            if (this.mContainerInfo.isPresent()) {
                throw new IllegalArgumentException("ItemInfo and ContainerInfo are mutual exclusive; cannot log both.");
            }
            this.mItemInfo = itemInfo;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withRank(int i4) {
            this.mRank = OptionalInt.of(i4);
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withSlice(LauncherAtom$Slice launcherAtom$Slice) {
            if (this.mItemInfo == DEFAULT_ITEM_INFO && this.mSliceItem == null) {
                L.f.b(launcherAtom$Slice, "expected valid slice but received null");
                L.f.b(launcherAtom$Slice.getUri(), "expected valid slice uri but received null");
                this.mSlice = launcherAtom$Slice;
                return this;
            }
            throw new IllegalStateException("ItemInfo, Slice and SliceItem are mutual exclusive; cannot set more than one of them.");
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withSliceItem(SliceItem sliceItem) {
            if (this.mItemInfo == DEFAULT_ITEM_INFO && this.mSlice == null) {
                L.f.b(sliceItem, "expected valid sliceItem but received null");
                this.mSliceItem = sliceItem;
                return this;
            }
            throw new IllegalStateException("ItemInfo, Slice and SliceItem are mutual exclusive; cannot set more than one of them.");
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withSrcState(int i4) {
            this.mSrcState = i4;
            return this;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.StatsLogger
        public StatsLogManager.StatsLogger withToState(LauncherAtom$ToState launcherAtom$ToState) {
            this.mToState = Optional.of(launcherAtom$ToState);
            return this;
        }
    }

    /* loaded from: classes.dex */
    public interface StatsLogConsumer {
        void consume(StatsLogManager.EventEnum eventEnum, LauncherAtom$ItemInfo launcherAtom$ItemInfo);
    }

    static {
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        IS_VERBOSE = Log.isLoggable(TAG, 2);
        DEBUG = !Utilities.isRunningInTestHarness();
        DEFAULT_INSTANCE_ID = InstanceId.fakeInstanceId(0);
        LOGS_CONSUMER = new CopyOnWriteArrayList();
    }

    public StatsLogCompatManager(Context context) {
        this.mContext = context;
    }

    public static StatsEvent buildStatsEvent(LauncherAtom$ItemInfo launcherAtom$ItemInfo, InstanceId instanceId) {
        return SysUiStatsLog.buildStatsEvent(SysUiStatsLog.LAUNCHER_LAYOUT_SNAPSHOT, StatsLogManager.LauncherEvent.LAUNCHER_WORKSPACE_SNAPSHOT.getId(), launcherAtom$ItemInfo.getItemCase().getNumber(), instanceId == null ? 0 : instanceId.getId(), 0, getPackageName(launcherAtom$ItemInfo), getComponentName(launcherAtom$ItemInfo), getGridX(launcherAtom$ItemInfo, false), getGridY(launcherAtom$ItemInfo, false), getPageId(launcherAtom$ItemInfo), getGridX(launcherAtom$ItemInfo, true), getGridY(launcherAtom$ItemInfo, true), getParentPageId(launcherAtom$ItemInfo), getHierarchy(launcherAtom$ItemInfo), launcherAtom$ItemInfo.getIsWork(), 0, getCardinality(launcherAtom$ItemInfo), launcherAtom$ItemInfo.getWidget().getSpanX(), launcherAtom$ItemInfo.getWidget().getSpanY(), getAttributes(launcherAtom$ItemInfo), launcherAtom$ItemInfo.getIsKidsMode());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] getAttributes(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        LauncherAtom$LauncherAttributes.Builder newBuilder = LauncherAtom$LauncherAttributes.newBuilder();
        Stream map = launcherAtom$ItemInfo.getItemAttributesList().stream().map(new g());
        Objects.requireNonNull(newBuilder);
        map.forEach(new i(newBuilder, 3));
        return ((LauncherAtom$LauncherAttributes) newBuilder.build()).toByteArray();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getCardinality(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        if (Utilities.isRunningInTestHarness()) {
            return 0;
        }
        int ordinal = launcherAtom$ItemInfo.getContainerInfo().getContainerCase().ordinal();
        if (ordinal != 6) {
            if (ordinal != 9) {
                if (ordinal != 11) {
                    if (ordinal == 13) {
                        LauncherAtomExtensions$ExtendedContainers extendedContainers = launcherAtom$ItemInfo.getContainerInfo().getExtendedContainers();
                        if (extendedContainers.getContainerCase() == LauncherAtomExtensions$ExtendedContainers.ContainerCase.DEVICE_SEARCH_RESULT_CONTAINER) {
                            LauncherAtomExtensions$DeviceSearchResultContainer deviceSearchResultContainer = extendedContainers.getDeviceSearchResultContainer();
                            if (deviceSearchResultContainer.hasQueryLength()) {
                                return deviceSearchResultContainer.getQueryLength();
                            }
                            return -1;
                        }
                    }
                    return launcherAtom$ItemInfo.getFolderIcon().getCardinality();
                }
                return launcherAtom$ItemInfo.getContainerInfo().getTaskBarContainer().getCardinality();
            }
            return launcherAtom$ItemInfo.getContainerInfo().getPredictedHotseatContainer().getCardinality();
        }
        return launcherAtom$ItemInfo.getContainerInfo().getSearchResultContainer().getQueryLength();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getComponentName(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        int ordinal = launcherAtom$ItemInfo.getItemCase().ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 5) {
                            if (ordinal != 6) {
                                return null;
                            }
                            return launcherAtom$ItemInfo.getSearchActionItem().getTitle();
                        }
                        return launcherAtom$ItemInfo.getSlice().getUri();
                    }
                    return launcherAtom$ItemInfo.getWidget().getComponentName();
                }
                return launcherAtom$ItemInfo.getShortcut().getShortcutName();
            }
            return launcherAtom$ItemInfo.getTask().getComponentName();
        }
        return launcherAtom$ItemInfo.getApplication().getComponentName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getFeatures(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        if (launcherAtom$ItemInfo.getItemCase().equals(LauncherAtom$ItemInfo.ItemCase.WIDGET)) {
            return launcherAtom$ItemInfo.getWidget().getWidgetFeatures();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getGridX(LauncherAtom$ItemInfo launcherAtom$ItemInfo, boolean z4) {
        LauncherAtom$ContainerInfo containerInfo = launcherAtom$ItemInfo.getContainerInfo();
        return containerInfo.getContainerCase() == LauncherAtom$ContainerInfo.ContainerCase.FOLDER ? z4 ? containerInfo.getFolder().getWorkspace().getGridX() : containerInfo.getFolder().getGridX() : containerInfo.getContainerCase() == LauncherAtom$ContainerInfo.ContainerCase.EXTENDED_CONTAINERS ? containerInfo.getExtendedContainers().getDeviceSearchResultContainer().getGridX() : containerInfo.getWorkspace().getGridX();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getGridY(LauncherAtom$ItemInfo launcherAtom$ItemInfo, boolean z4) {
        return launcherAtom$ItemInfo.getContainerInfo().getContainerCase() == LauncherAtom$ContainerInfo.ContainerCase.FOLDER ? z4 ? launcherAtom$ItemInfo.getContainerInfo().getFolder().getWorkspace().getGridY() : launcherAtom$ItemInfo.getContainerInfo().getFolder().getGridY() : launcherAtom$ItemInfo.getContainerInfo().getWorkspace().getGridY();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getHierarchy(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        if (Utilities.isRunningInTestHarness()) {
            return 0;
        }
        return launcherAtom$ItemInfo.getContainerInfo().getContainerCase() == LauncherAtom$ContainerInfo.ContainerCase.FOLDER ? launcherAtom$ItemInfo.getContainerInfo().getFolder().getParentContainerCase().getNumber() + 100 : launcherAtom$ItemInfo.getContainerInfo().getContainerCase() == LauncherAtom$ContainerInfo.ContainerCase.SEARCH_RESULT_CONTAINER ? launcherAtom$ItemInfo.getContainerInfo().getSearchResultContainer().getParentContainerCase().getNumber() + 200 : launcherAtom$ItemInfo.getContainerInfo().getContainerCase() == LauncherAtom$ContainerInfo.ContainerCase.EXTENDED_CONTAINERS ? launcherAtom$ItemInfo.getContainerInfo().getExtendedContainers().getContainerCase().getNumber() + 300 : launcherAtom$ItemInfo.getContainerInfo().getContainerCase() == LauncherAtom$ContainerInfo.ContainerCase.ALL_APPS_CONTAINER ? launcherAtom$ItemInfo.getContainerInfo().getAllAppsContainer().getParentContainerCase().getNumber() + 400 : launcherAtom$ItemInfo.getContainerInfo().getContainerCase().getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getPackageName(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        int ordinal = launcherAtom$ItemInfo.getItemCase().ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 6) {
                            return null;
                        }
                        return launcherAtom$ItemInfo.getSearchActionItem().getPackageName();
                    }
                    return launcherAtom$ItemInfo.getWidget().getPackageName();
                }
                return launcherAtom$ItemInfo.getShortcut().getShortcutName();
            }
            return launcherAtom$ItemInfo.getTask().getPackageName();
        }
        return launcherAtom$ItemInfo.getApplication().getPackageName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getPageId(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        if (launcherAtom$ItemInfo.hasTask()) {
            return launcherAtom$ItemInfo.getTask().getIndex();
        }
        int ordinal = launcherAtom$ItemInfo.getContainerInfo().getContainerCase().ordinal();
        return ordinal != 1 ? ordinal != 2 ? ordinal != 9 ? ordinal != 11 ? launcherAtom$ItemInfo.getContainerInfo().getWorkspace().getPageIndex() : launcherAtom$ItemInfo.getContainerInfo().getTaskBarContainer().getIndex() : launcherAtom$ItemInfo.getContainerInfo().getPredictedHotseatContainer().getIndex() : launcherAtom$ItemInfo.getContainerInfo().getFolder().getPageIndex() : launcherAtom$ItemInfo.getContainerInfo().getHotseat().getIndex();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getParentPageId(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        int ordinal = launcherAtom$ItemInfo.getContainerInfo().getContainerCase().ordinal();
        return ordinal != 2 ? ordinal != 6 ? launcherAtom$ItemInfo.getContainerInfo().getWorkspace().getPageIndex() : launcherAtom$ItemInfo.getContainerInfo().getSearchResultContainer().getWorkspace().getPageIndex() : launcherAtom$ItemInfo.getContainerInfo().getFolder().getParentContainerCase() == LauncherAtom$FolderContainer.ParentContainerCase.HOTSEAT ? launcherAtom$ItemInfo.getContainerInfo().getFolder().getHotseat().getIndex() : launcherAtom$ItemInfo.getContainerInfo().getFolder().getWorkspace().getPageIndex();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getSearchAttributes(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        if (Utilities.isRunningInTestHarness()) {
            return 0;
        }
        LauncherAtom$ContainerInfo containerInfo = launcherAtom$ItemInfo.getContainerInfo();
        if (containerInfo.getContainerCase() == LauncherAtom$ContainerInfo.ContainerCase.EXTENDED_CONTAINERS && containerInfo.getExtendedContainers().getContainerCase() == LauncherAtomExtensions$ExtendedContainers.ContainerCase.DEVICE_SEARCH_RESULT_CONTAINER && containerInfo.getExtendedContainers().getDeviceSearchResultContainer().hasSearchAttributes()) {
            return searchAttributesToInt(containerInfo.getExtendedContainers().getDeviceSearchResultContainer().getSearchAttributes());
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getStateString(int i4) {
        return i4 != 1 ? i4 != 2 ? i4 != 3 ? i4 != 4 ? "INVALID" : "ALLAPPS" : "OVERVIEW" : "HOME" : "BACKGROUND";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    private static int searchAttributesToInt(LauncherAtomExtensions$DeviceSearchResultContainer.SearchAttributes searchAttributes) {
        boolean correctedQuery = searchAttributes.getCorrectedQuery();
        ?? r02 = correctedQuery;
        if (searchAttributes.getDirectMatch()) {
            r02 = (correctedQuery ? 1 : 0) | true;
        }
        return searchAttributes.getEntryState() == LauncherAtomExtensions$DeviceSearchResultContainer.SearchAttributes.EntryState.ALL_APPS ? r02 | 4 : searchAttributes.getEntryState() == LauncherAtomExtensions$DeviceSearchResultContainer.SearchAttributes.EntryState.QSB ? r02 | 8 : r02;
    }

    public static void writeSnapshot(LauncherAtom$ItemInfo launcherAtom$ItemInfo, InstanceId instanceId) {
        if (IS_VERBOSE) {
            Log.d(TAG, String.format("\nwriteSnapshot(%d):\n%s", Integer.valueOf(instanceId.getId()), launcherAtom$ItemInfo));
        }
        if (!Utilities.ATLEAST_R || Utilities.isRunningInTestHarness()) {
            return;
        }
        SysUiStatsLog.write(SysUiStatsLog.LAUNCHER_SNAPSHOT, StatsLogManager.LauncherEvent.LAUNCHER_WORKSPACE_SNAPSHOT.getId(), launcherAtom$ItemInfo.getItemCase().getNumber(), instanceId.getId(), 0, getPackageName(launcherAtom$ItemInfo), getComponentName(launcherAtom$ItemInfo), getGridX(launcherAtom$ItemInfo, false), getGridY(launcherAtom$ItemInfo, false), getPageId(launcherAtom$ItemInfo), getGridX(launcherAtom$ItemInfo, true), getGridY(launcherAtom$ItemInfo, true), getParentPageId(launcherAtom$ItemInfo), getHierarchy(launcherAtom$ItemInfo), launcherAtom$ItemInfo.getIsWork(), 0, getCardinality(launcherAtom$ItemInfo), launcherAtom$ItemInfo.getWidget().getSpanX(), launcherAtom$ItemInfo.getWidget().getSpanY(), getFeatures(launcherAtom$ItemInfo), getAttributes(launcherAtom$ItemInfo));
    }

    @Override // com.android.launcher3.logging.StatsLogManager
    public StatsLogManager.StatsImpressionLogger createImpressionLogger() {
        return new StatsCompatImpressionLogger(0);
    }

    @Override // com.android.launcher3.logging.StatsLogManager
    public StatsLogManager.StatsLatencyLogger createLatencyLogger() {
        return new StatsCompatLatencyLogger(0);
    }

    @Override // com.android.launcher3.logging.StatsLogManager
    public StatsLogManager.StatsLogger createLogger() {
        return new StatsCompatLogger(this.mContext, this.mActivityContext);
    }
}
