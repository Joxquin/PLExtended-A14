.class final Lcom/android/launcher3/folder/FolderNameProvider$FolderNameWorker;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderNameProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/FolderNameProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderNameProvider$FolderNameWorker;->this$0:Lcom/android/launcher3/folder/FolderNameProvider;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderNameProvider$FolderNameWorker;->this$0:Lcom/android/launcher3/folder/FolderNameProvider;

    iget-object p2, p2, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p2}, Lcom/android/launcher3/util/IntSparseArrayMap;->clone()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object p2

    iput-object p2, p1, Lcom/android/launcher3/folder/FolderNameProvider;->mFolderInfos:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderNameProvider$FolderNameWorker;->this$0:Lcom/android/launcher3/folder/FolderNameProvider;

    iget-object p1, p3, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    sget-object p2, Lcom/android/launcher3/model/data/AppInfo;->EMPTY_ARRAY:[Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/launcher3/model/data/AppInfo;

    sget-object p2, Lcom/android/launcher3/model/data/AppInfo;->COMPONENT_KEY_COMPARATOR:LO0/a;

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderNameProvider;->mAppInfos:Ljava/util/List;

    return-void
.end method
