.class public Lcom/android/systemui/shared/condition/Monitor$Subscription;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCallback:Lcom/android/systemui/shared/condition/Monitor$Callback;

.field private final mConditions:Ljava/util/Set;

.field private final mNestedSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;


# direct methods
.method private constructor <init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mConditions:Ljava/util/Set;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mCallback:Lcom/android/systemui/shared/condition/Monitor$Callback;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mNestedSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/shared/condition/Monitor$Subscription;-><init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/systemui/shared/condition/Monitor$Subscription;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mConditions:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public getCallback()Lcom/android/systemui/shared/condition/Monitor$Callback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mCallback:Lcom/android/systemui/shared/condition/Monitor$Callback;

    return-object p0
.end method

.method public getConditions()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mConditions:Ljava/util/Set;

    return-object p0
.end method

.method public getNestedSubscription()Lcom/android/systemui/shared/condition/Monitor$Subscription;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mNestedSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    return-object p0
.end method
