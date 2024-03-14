.class public final synthetic LD0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/VibratorWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/VibratorWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/i;->a:Lcom/android/launcher3/util/VibratorWrapper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LD0/i;->a:Lcom/android/launcher3/util/VibratorWrapper;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {p0}, Lcom/android/launcher3/util/VibratorWrapper;->cancelVibrate()V

    return-void
.end method
