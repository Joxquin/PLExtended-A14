.class final Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;
.super Landroidx/recyclerview/widget/p;
.source "SourceFile"


# instance fields
.field private final mNewList:Ljava/util/List;

.field private final mOldList:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/p;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;->mOldList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;->mNewList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object p0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->isContentSame(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)Z

    move-result p0

    return p0
.end method

.method public final areItemsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object p0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->isSameAs(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)Z

    move-result p0

    return p0
.end method

.method public final getNewListSize()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getOldListSize()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
