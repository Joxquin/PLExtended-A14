.class public final synthetic Lcom/android/systemui/shared/condition/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/systemui/shared/condition/Monitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/condition/Monitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/condition/d;->a:Lcom/android/systemui/shared/condition/Monitor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/d;->a:Lcom/android/systemui/shared/condition/Monitor;

    check-cast p1, Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    invoke-static {p0, p1}, Lcom/android/systemui/shared/condition/Monitor;->e(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;)V

    return-void
.end method
