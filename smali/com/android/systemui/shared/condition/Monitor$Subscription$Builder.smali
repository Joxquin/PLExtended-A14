.class public Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCallback:Lcom/android/systemui/shared/condition/Monitor$Callback;

.field private final mConditions:Landroid/util/ArraySet;

.field private final mNestedSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/condition/Monitor$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;-><init>(Lcom/android/systemui/shared/condition/Monitor$Subscription;Lcom/android/systemui/shared/condition/Monitor$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/condition/Monitor$Subscription;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;-><init>(Lcom/android/systemui/shared/condition/Monitor$Subscription;Lcom/android/systemui/shared/condition/Monitor$Callback;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/shared/condition/Monitor$Subscription;Lcom/android/systemui/shared/condition/Monitor$Callback;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mNestedSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mCallback:Lcom/android/systemui/shared/condition/Monitor$Callback;

    .line 6
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mConditions:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public addCondition(Lcom/android/systemui/shared/condition/Condition;)Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mConditions:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addConditions(Ljava/util/Set;)Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mConditions:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lcom/android/systemui/shared/condition/Monitor$Subscription;
    .locals 4

    new-instance v0, Lcom/android/systemui/shared/condition/Monitor$Subscription;

    iget-object v1, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mConditions:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mCallback:Lcom/android/systemui/shared/condition/Monitor$Callback;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mNestedSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/systemui/shared/condition/Monitor$Subscription;-><init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;I)V

    return-object v0
.end method
