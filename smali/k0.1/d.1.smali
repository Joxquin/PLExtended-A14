.class public final Lk0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static volatile b:Lt0/d;

.field public static volatile c:Lt0/c;


# direct methods
.method public static a()V
    .locals 1

    sget v0, Lk0/d;->a:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lk0/d;->a:I

    :cond_0
    return-void
.end method
