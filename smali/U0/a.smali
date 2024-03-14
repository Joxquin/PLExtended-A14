.class public final synthetic LU0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU0/a;->a:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    iget-object p0, p0, LU0/a;->a:Ljava/lang/CharSequence;

    invoke-static {p1, p0}, Lcom/android/launcher3/search/StringMatcherUtility;->a(ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
