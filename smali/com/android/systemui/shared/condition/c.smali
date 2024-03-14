.class public final synthetic Lcom/android/systemui/shared/condition/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/systemui/shared/condition/Monitor;

.field public final synthetic e:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

.field public final synthetic f:Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;

.field public final synthetic g:Lcom/android/systemui/shared/condition/Monitor$Subscription;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/condition/c;->d:Lcom/android/systemui/shared/condition/Monitor;

    iput-object p2, p0, Lcom/android/systemui/shared/condition/c;->e:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    iput-object p3, p0, Lcom/android/systemui/shared/condition/c;->f:Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;

    iput-object p4, p0, Lcom/android/systemui/shared/condition/c;->g:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/condition/c;->d:Lcom/android/systemui/shared/condition/Monitor;

    iget-object v1, p0, Lcom/android/systemui/shared/condition/c;->e:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    iget-object v2, p0, Lcom/android/systemui/shared/condition/c;->f:Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/c;->g:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/shared/condition/Monitor;->a(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V

    return-void
.end method
